// import 'dart:async';
// import '../request/request.dart';

// // GET 请求
// // 返回的结果直接就是 json 格式
// // 要使用 await，必须在方法名后面加上 async
// _handleGetShelf() async {
//   await HttpUtils.request('/index/getGoodsList', method: HttpUtils.GET, data: {
//     'page': 1,
//   });
// }

// // POST 请求
// _handleAddShelf() async {
//   var result =
//       await HttpUtils.request('/gysw/shelf', method: HttpUtils.POST, data: {
//     'id': 1,
//   });
// }

// // PUT 请求
// _handleEditShelf() async {
//   var result =
//       await HttpUtils.request('/gysw/shelf/:id', method: HttpUtils.PUT, data: {
//     'id': 1,
//   });
// }

// // DELETE 请求
// _handleDelShelf() async {
//   var result = await HttpUtils.request('/gysw/shelf/:id',
//       method: HttpUtils.DELETE,
//       data: {
//         'id': 1,
//       });
// }
