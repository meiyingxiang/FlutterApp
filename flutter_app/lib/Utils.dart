void execute(var callback) {
  callback();
}

//可选的位置参数
String sayHi(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }

  Future.delayed(new Duration(seconds: 2), () {
//      return "hi world";
    throw AssertionError("Error");
  }).then((data) {
//      print(data);
    print("success");
  }).catchError((e) {
    //执行异常
    print(e);
  });

  Future.delayed(new Duration(seconds: 2), () {
//      return "hi world";
    throw AssertionError("Error");
  }).then((data) {
//      print(data);
    print("success");
  }, onError: (e) {
    print(e);
  }).whenComplete(() =>
      //无论成功或失败都会走到这
      print(""));

  enableFlags();
  enableFlags(bold: true);
  enableFlags(hidden: false);
  enableFlags(hidden: false, bold: true);
  return result;
}

//可选命名参数
void enableFlags({bool bold, bool hidden}) {}

void testFunction() {
  Future.wait([
    Future.delayed(new Duration(seconds: 2), () {
      return "hello";
    }),
    Future.delayed(new Duration(seconds: 4), () {
      return "world";
    })
  ]).then((results) {
    print(results[0] + results[1]);
  }).catchError((e) {
    print(e);
  });

  /* login("userName", "pwd").then((id) {
      getUserInfo(id).then((userInfo) {
        saveUserInfo(userInfo).then((result) {
          print("object");
        });
      });
    });*/

  /*   login("userName", "pwd")
        .then((id) => getUserInfo(id))
        .then((userInfo) => saveUserInfo(userInfo))
        .catchError((e) {
      print(e);
    });*/

  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(new Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  }, onDone: () {});
}

task() async {
  try {
    String id = await login("userName", "pwd");
    String userInfo = await getUserInfo(id);
    await saveUserInfo(userInfo);
  } catch (e) {
    print(e);
  }
}

Future<String> login(String userName, String pwd) {
  //登陆
}

Future<String> getUserInfo(String id) {
  //获取用户信息
}

Future saveUserInfo(String userInfo) {
  //保存用户信息
}
