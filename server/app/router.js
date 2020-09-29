module.exports = app => {
  const { router, controller } = app;

  // 段发钰-详情页面获取菜品
  router.get("/getFood", controller.foodController.getFoodC);
  // 段发钰-详情页面获取材料
  router.get("/getMaterials", controller.materialsController.getMaterialsC);
  // 段发钰-详情页面获取步骤
  router.get("/getStep", controller.stepController.getStepC);
  // 段发钰-详情页面获取用户信息
  router.get("/getUser", controller.userController.getUserC);
  // 段发钰-首页轮播图
  router.get("/getBanner", controller.bannerController.getBannerC);
  // 段发钰-获取首页厨房故事 getFoodsStory
  router.get("/getFoodsStory", controller.foodStoryController.getFoodsStoryC);
  // 段发钰-获取厨房故事详情 getFoodsStory
  router.get("/getStoryDetail", controller.foodStoryController.getStoryDetailC);

  //朱思霖-搜索页根据关键词搜索菜品信息
  router.post("/getFoodsByKeyWord", controller.searchController.getFoodsByKeyWord);
  //朱思霖-用户点击收藏
  router.get("/handleCollect", controller.searchController.handleCollect);
  //朱思霖-用户取消收藏
  router.get("/cancelCollect", controller.searchController.cancelCollect);
  //朱思霖-得到某用户收藏的菜单
  router.get("/getMyCollect", controller.searchController.getMyCollect);

  //宋宇-用户登录验证
  router.post("/userLogin", controller.loginController.userLogin);
  //宋宇-验证用户名
  router.post("/checkUser", controller.loginController.checkUser);
  //宋宇-验证手机号是否存在
  router.post("/checkPhone", controller.loginController.checkPhone);
  //宋宇-注册用户信息
  router.post("/userRegist", controller.loginController.userRegist);

  // 蒋鑫瑞-分享大厅搜索所有用户的分享
	router.get('/showShare', controller.shareController.showAll)
	// 蒋鑫瑞-分享大厅根据localStorage的用户id取用户自己的分享
	router.get('/showOwn', controller.shareController.showOwn)
	// 蒋鑫瑞-查询分享大厅上传分享组件中用户的头像、昵称
	router.get('/getUserIfo', controller.shareController.getUserIfo)
	// 蒋鑫瑞-上传用户的分享内容
	router.post('/showImg', controller.shareController.showImg)
	// 蒋鑫瑞-分享大厅添加评论
	router.get('/addComment', controller.shareController.addComment)
	// 蒋鑫瑞-分享大厅展示评论
	router.get('/getComment', controller.shareController.getComment)
	// 蒋鑫瑞-分享大厅评论删除
	router.get('/delComment', controller.shareController.delComment)
  // 蒋鑫瑞-分享大厅删除分享
  router.get('/delShare', controller.shareController.delShare)
	// 蒋鑫瑞-分享大厅查询点赞
	router.get('/getLiker', controller.shareController.getLiker)
	// 蒋鑫瑞-分享大厅添加点赞
	router.get('/addLike', controller.shareController.addLike)
	// 蒋鑫瑞-分享大厅删除点赞
	router.get('/delLike', controller.shareController.delLike)

  // 刘俊良页面加载获取用户id、头像  路由
  router.get("/persononload", controller.profileController.onload);
  // 刘俊良上传新的菜谱
  router.post("/uploadFoods", controller.profileController.uploadFoods);
  //刘俊良获取当前用户菜品   新增
  router.get("/getmyproduct", controller.profileController.getmyproduct);
};
