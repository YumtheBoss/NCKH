import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:humg_ai_chat_app/features/home/provider/chatbot/get_conv_title.dart';
import 'package:humg_ai_chat_app/features/home/provider/chatbot/get_history_conv.dart';
import 'package:humg_ai_chat_app/features/home/provider/chatbot/get_reply_provider.dart';
import 'package:uuid/uuid.dart';
import '../provider/check_login_provider.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cccdController = useTextEditingController();
    final showCCCDDialog = useState(false);
    final messages = useState<List<Map<String, String>>>([]);
    final textController = useTextEditingController();
    final isStartChat = useState(false);
    final isHistoryOpen = useState(false);
    final chatWidth = MediaQuery.of(context).size.width * 0.7;
    final isLogin = ref.watch(isLoginProvider);
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final showValidate = useState(false);
    const uuid = Uuid();

    final nameUser = useState(isLogin ? 'Trần Văn Hào' : '');
    final idUser = useState(isLogin ? '2121050046' : '');
    final idRequest = useState('');

    final isLoadingReply = ref.watch(getReplyProvider).isLoading;
    final isLoadingOldChat = ref.watch(getHistoryConvProvider).isLoading;
    final historyChatList = ref.watch(getConvTitleProvider).data;
    final termsList = ref.watch(getReplyProvider).terms;

    final scrollController = useState(ScrollController());

    Future<void> sendMessage() async {
      if (textController.text.isNotEmpty) {
        Future.delayed(const Duration(milliseconds: 100), () {
          if (scrollController.value.hasClients) {
            scrollController.value.animateTo(
              scrollController.value.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        });

        messages.value = [
          ...messages.value,
          {'sender': 'user', 'message': textController.text},
        ];

        String inputText = textController.text;
        if (inputText.toLowerCase().contains("tra cứu")) {
          showCCCDDialog.value = true;
          return;
        }

        textController.clear();
        FocusScope.of(context).unfocus();
        isStartChat.value = true;

        if (idRequest.value.isEmpty) {
          idRequest.value = uuid.v4();
        }
        await ref.read(getReplyProvider.notifier).getReply(
          nameBot: 'HUMG',
          idRequest: idRequest.value,
          userName: nameUser.value,
          inputText: inputText,
          mssv: idUser.value,
        );

        String responseBot = ref.watch(getReplyProvider).reply.content ?? 'Hiện tại em không thể trả lời câu hỏi này!';

        messages.value = [
          ...messages.value,
          {'sender': 'bot', 'message': responseBot},
        ];

        Future.delayed(const Duration(milliseconds: 100), () {
          if (scrollController.value.hasClients) {
            scrollController.value.animateTo(
              scrollController.value.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        });

      }
    }

    Future loadHistoryChat(String sessionId) async {
      await ref.read(getHistoryConvProvider.notifier).getHistoryConv(mssv: idUser.value, sessionId: sessionId);
      var detailHistoryChat = ref.watch(getHistoryConvProvider).data;
      List<Map<String, String>> addConv = [];
      for (var i = 0; i < detailHistoryChat.length; i++) {
        String humanChat = detailHistoryChat[i].human ?? '';
        String botChat = detailHistoryChat[i].ai ?? '';
        if (humanChat.isNotEmpty) {
          addConv.add({'sender': 'user', 'message': humanChat});
        }
        if (botChat.isNotEmpty) {
          addConv.add({'sender': 'bot', 'message': botChat});
        }
      }
      messages.value = addConv;
    }

    Widget buildSampleQuestion(String question) {
      return Column(
        children: [
          ElevatedButton(
            onPressed: () {
              textController.text = question;
              sendMessage();
              isStartChat.value = true;
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              question,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
        ],
      );
    }

    useMemoized(() {
      Future.delayed(const Duration(milliseconds: 500), () {
        ref.read(getConvTitleProvider.notifier).getConvTitle(mssv: idUser.value);
      });
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              padding: const EdgeInsets.all(8),
              child: const Image(
                image: AssetImage('assets/images/icon_chatbot.png'),
                width: 40,
              ),
            ),
            const SizedBox(width: 15),
            const Text("Chatbot tư vấn HUMG"),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.history, color: Colors.white),
            onPressed: () => isHistoryOpen.value = !isHistoryOpen.value,
          ),
        ],
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              isHistoryOpen.value = false;
            },
            child: Container(
              color: Colors.white,
              height: double.infinity,
              child: Column(
                children: [
                  !isStartChat.value || messages.value.isEmpty
                      ? Expanded(
                        child: SingleChildScrollView(
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(height: 50),
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: const Image(
                                    image: AssetImage(
                                      'assets/images/icon_chatbot.png',
                                    ),
                                    width: 40,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Xin chào! Tôi có thể giúp gì cho bạn?",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                for (var i = 0; i < (termsList.terms ?? []).length; i++)
                                  buildSampleQuestion(termsList.terms![i]),
                              ],
                            ),
                          ),
                        ),
                      )
                      : Expanded(
                    child: ListView.builder(
                      controller: scrollController.value,
                      padding: const EdgeInsets.all(16),
                      itemCount: messages.value.length + (isLoadingReply ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == messages.value.length && isLoadingReply) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                padding: const EdgeInsets.all(8),
                                child: const Image(
                                  image: AssetImage('assets/images/icon_chatbot.png'),
                                  width: 50,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Đang xử lý...",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }

                        final message = messages.value[index];
                        final isUser = message['sender'] == 'user';
                        return Row(
                          mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!isUser) ...[
                              Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: const Image(
                                      image: AssetImage('assets/images/icon_chatbot.png'),
                                      width: 50,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                            ],
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: chatWidth,
                              ),
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: isUser ? Colors.blue[300] : Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  message['message'] ?? '',
                                  style: TextStyle(
                                    color: isUser ? Colors.white : Colors.black,
                                    fontSize: 15.0,
                                  ),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: textController,
                            onTap: () {
                              isHistoryOpen.value = false;
                            },
                            decoration: InputDecoration(
                              hintText: "Nhập tin nhắn...",
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(color: Colors.blue[900]!),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(color: Colors.blue[900]!),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(color: Colors.blue[900]!),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send_rounded, color: Colors.blue[900]),
                          onPressed: sendMessage,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isHistoryOpen.value)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Lịch sử Chat",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: historyChatList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              const Divider(height: 1),
                              ListTile(
                                title: Text(
                                  historyChatList[index].title ??
                                      '',
                                ),
                                onTap: () async {
                                  await loadHistoryChat(historyChatList[index].sessionId ?? '');
                                  idRequest.value = historyChatList[index].sessionId ?? '';
                                  isStartChat.value = true;
                                  isHistoryOpen.value = false;
                                  Future.delayed(const Duration(milliseconds: 100), () {
                                    if (scrollController.value.hasClients) {
                                      scrollController.value.animateTo(
                                        scrollController.value.position.maxScrollExtent,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeOut,
                                      );
                                    }
                                  });
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

          if (nameUser.value.isEmpty && idUser.value.isEmpty)
            /// show dialog to type phone number and name
            Container(
              color: Colors.black.withValues(alpha: 0.5),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Vui lòng nhập số điện thoại và tên của bạn",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "Số điện thoại",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Tên của bạn",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),


                      /// validate text
                      if ((phoneController.text.isEmpty || nameController.text.isEmpty) && showValidate.value)
                        ... [
                          const SizedBox(height: 10),
                          const Text(
                            "Vui lòng nhập đầy đủ thông tin",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (phoneController.text.isNotEmpty && nameController.text.isNotEmpty) {
                            nameUser.value = nameController.text;
                            idUser.value = phoneController.text;
                            ref.read(getConvTitleProvider.notifier).getConvTitle(mssv: idUser.value);
                          } else {
                            showValidate.value = true;
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text("Xác nhận", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (showCCCDDialog.value)
  Center(
    child: Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Nhập số CCCD để tra cứu",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: cccdController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Số CCCD",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  showCCCDDialog.value = false;
                  cccdController.clear();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                child: const Text("Huỷ"),
              ),
              ElevatedButton(
                onPressed: () async {
                  showCCCDDialog.value = false;

                  final inputText = textController.text;
                  final cccd = cccdController.text;

                  messages.value = [
                    ...messages.value,
                    {'sender': 'user', 'message': inputText},
                  ];

                  textController.clear();
                  FocusScope.of(context).unfocus();
                  isStartChat.value = true;

                  if (idRequest.value.isEmpty) {
                    idRequest.value = uuid.v4();
                  }

                  await ref.read(getReplyProvider.notifier).getReply(
                    nameBot: 'HUMG',
                    idRequest: idRequest.value,
                    userName: nameUser.value,
                    inputText: "$inputText | CCCD: $cccd",
                    mssv: idUser.value,
                  );

                  String responseBot = ref.watch(getReplyProvider).reply.content ??
                      'Hiện tại em không thể trả lời câu hỏi này!';

                  messages.value = [
                    ...messages.value,
                    {'sender': 'bot', 'message': responseBot},
                  ];

                  Future.delayed(const Duration(milliseconds: 100), () {
                    if (scrollController.value.hasClients) {
                      scrollController.value.animateTo(
                        scrollController.value.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      );
                    }
                  });

                  cccdController.clear();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
                child: const Text("Gửi", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    ),
  ),

          if (isLoadingOldChat)
            Container(
              color: Colors.black.withValues(alpha: 0.5),
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
