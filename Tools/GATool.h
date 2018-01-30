//
//  GATool.h
//  GuardAngel
//
//  Created by ivy.sun on 16/5/5.
//  Copyright © 2016年 GA. All rights reserved.
//  工具类

#import <Foundation/Foundation.h>
#import "CityModel.h"

/**后台接口Url*/
extern NSString *const BASE_URL ;
//------------------------------------------登录模块---------------------------------/
/**获取注册验证码*/
extern NSString *const REGISTER_CODE ;
/**验证注册验证码*/
extern NSString * const  REGISTER_CODE_TEST;
/**获取重置密码验证码*/
extern NSString *const RESET_PASSWORD_CODE ;
/**验证重置密码验证码*/
extern NSString * const  RESET_PASSWORD_CODE_TEST;
/**注册*/
extern NSString *const REGISTER ;
/**登录*/
extern NSString *const LOGIN ;
/**修改密码*/
extern NSString * const  RESET_PASSWORD ;
/**上传DeviceToken*/
extern NSString * const  upload_DeviceToken;
//------------------------------------------求职模块---------------------------------/
/**薪水列表*/
extern NSString * const  SALARY_LEVEL;
/**地区列表*/
extern NSString * const  AREAS;
/**按城市查询职位列表*/
extern NSString * const  QUERY_ON_AREA;
/**按经纬度查询城市*/
extern NSString * const  QUERY_CITY;
/**职位详情*/
extern NSString * const  JOB_DETAIL;
/**职位收藏*/
extern NSString * const  JOB_FAVORITE;
/**职位投递简历*/
extern NSString * const  JOB_SUBMIT;
/**公司详情*/
extern NSString * const  COMPANY_DETAIL;
/**公司评分*/
extern NSString * const  COMPANY_RATE ;
/**我的基本数据*/
extern NSString * const  MY_BASE;
/**获取公司所有招聘职位*/
extern NSString * const  COMPANY_JOBS;
/**关注/取消关注公司*/
extern NSString * const  COMPANY_FOLLOW;
/**获取地区pickView列表数据*/
extern NSString * const  PICK_AREA;
/**获取简历*/
extern NSString * const  RESUME;
/**公司拉黑*/
extern NSString * const  BLOCK_COMP;
/**移除公司黑名单*/
extern NSString * const  CLEAR_COMP;
/**保存简历基本信息*/
extern NSString * const  SAVE_BASE ;
/**保存简历求职意向*/
extern NSString * const  SAVE_TARGET;
/**保存简历教育经历*/
extern NSString * const  SAVE_EDU ;
/**保存简历工作经历*/
extern NSString * const  SAVE_WORK ;
/**保存简历技能*/
extern NSString * const  SAVE_SKILL ;
/**保存自我评价*/
extern NSString * const  SAVE_COMMENT;
/**我的相关公司*/
extern NSString * const  MY_COMP;
/**搜索公司*/
extern NSString * const  SEARCH_COMP;
/**收藏、投递的职位列表*/
extern NSString * const  REF_JOBS_ON;
/**获得保安的额外信息*/
extern NSString * const  Get_Addition;
/**保存家庭成员*/
extern NSString * const  save_Family;
/**保存社会关系*/
extern NSString * const  save_Social ;
/**保存奖惩信息*/
extern NSString * const  save_Reward ;
/**获取面试通知*/
extern NSString * const  get_Message;
//------------------------------------------好友模块---------------------------------/
/**好友列表*/
extern NSString * const  GET_FRIENDS;
/**同事列表*/
extern NSString * const  GET_COLLEAGE;
/**好友详情*/
extern NSString * const  USER_DETAILS;
/**附近人列表*/
extern NSString * const  GET_NEARBY;
/**待验证的好友列表*/
extern NSString * const  GET_APPLY_FRIENDS;
/**请求添加好友*/
extern NSString * const  APPLY_FRIENDS;
/**同意添加好友*/
extern NSString * const  CONFIRM_FRIEND;
/**黑名单列表*/
extern NSString * const  BLOCK_LIST;
/**拉黑*/
extern NSString * const  BLOCK_USER;
/**移出黑名单*/
extern NSString * const  UNBLOCK_USER;
/**删除好友*/
extern NSString * const  DISFRIEND;
/**搜索陌生人（添加新好友）*/
extern NSString * const  SEARCH_NEW_FRIENDS;
/**搜索已存在好友*/
extern NSString * const  SEARCH_FRIEND;

//------------------------------------------首页---------------------------------/
/**获取角色信息*/
extern NSString * const  GET_INFO ;

//------------------------------------------求才---------------------------------/
/**按条件筛选保安*/
extern NSString * const  QUERY_SEEKER;
/**已投列表*/
extern NSString * const  LIST_REQUEST;
/**已投列表2*/
extern NSString * const  Job_Recive_Preview;
/**投递某职位的所有保安列表*/
extern NSString * const  GuardList_With_JobID;
/**查看投递求职者的简历*/
extern NSString * const  resume_From_JobSubmitID;
/**收藏列表*/
extern NSString * const  LIST_FAVORITE;
/**人才简历*/
extern NSString * const  RECRUIT_RESUME;
/**收藏保安*/
extern NSString * const  Favorite_Seeker ;
/**面试*/
extern NSString * const  In_Seeker;
/**拒绝*/
extern NSString * const  Reject_Seeker ;
/**取消收藏保安*/
extern NSString * const  Cancel_Seeker;
/**创建或编辑职位*/
extern NSString * const  Edit_Job;
/**删除职位*/
extern NSString * const  Delete_Job;
/**编辑公司信息*/
extern NSString * const  Edit_CompDetail;
/**临保列表*/
extern NSString * const  list_TempJob;
/**创建/编辑临保列表*/
extern NSString * const  edit_TempJob;
/**获取临保详情*/
extern NSString * const  detail_TempJob;
/**删除临保*/
extern NSString * const  delete_TempJob;
/**公司认证*/
extern NSString * const  authentication;
/**通知入职*/
extern NSString * const  GotSeeker;
/**获得职业生涯*/
extern NSString * const  getJoblife;
/**获得员工列表*/
extern NSString * const  list_emploree;
/**同意／拒绝入职*/
extern NSString * const  agreein;
/**对员工进行评价*/
extern NSString * const  rateEmployee;
/**获取员工历史评价列表*/
extern NSString * const  list_ratehistory;
//------------------------------------------通知---------------------------------/
/**定位完成通知*/
extern NSString * const NOTIFICATION_LOCATION_COMPLISH;
/**用户忽略定位*/
extern NSString * const NOTIFICATION_LOCATION_COMPLISH_BUT_IGNORE;
/**显示遮罩*/
extern NSString * const NOTIFICATION_SHOW_COVER;
/**隐藏遮罩*/
extern NSString * const NOTIFICATION_HIDE_COVER;
/**用户取消登录*/
extern NSString * const NOTIFICATION_USER_CANCEL_LOGIN;
/**注册成功*/
extern NSString * const NOTIFICATION_USER_SUCCESS_REGIST;
/**登录成功*/
extern NSString * const NOTIFICATION_USER_SUCCESS_LOGIN;
/**网络不通*/
extern NSString * const NOTIFICATION_NO_NET_CONNECT;
/**账号过期*/
extern NSString * const NOTIFICATION_NEED_RELOGIN;
/**新好友请求*/
extern NSString * const NOTIFICATION_newFriend ;
/**简历被修改*/
extern NSString * const NOTIFICATION_newInterview ;
/**收到新简历投递*/
extern NSString * const NOTIFICATION_newResume;

typedef enum {
    LoginStatusValid,//登录有效
    LoginStatusNever,//未登录过
}LoginStatus;

@interface GATool : NSObject

#pragma mark - 用户相关
/**  获取当前登录用户名*/
+ (NSString *)getUserName;

/**  设置当前登录用户名*/
+ (void)setUserName:(NSString *)name;

/**  获取当前登录用户ID*/
+ (NSNumber *)getUserID;

/**  设置当前登录用户ID*/
+ (void)setUserID:(NSString *)userID;

/**  获取当前登录用户类型*/
+ (NSString *)getUserType;

/**  设置当前登录用户类型*/
+ (void)setUserType:(NSString *)UserType;

/**  获取当前登录密码*/
+ (NSString *)getPwd;

/**  设置当前登录密码*/
+ (void)setPwd:(NSString *)pwd;

/**  读取Token*/
+ (NSString *)getToken;

/**  存储Token*/
+ (void)setToken:(NSString *)token;


/**
 *  获取key对应的value
 */
+ (BOOL)getBoolValueByKey:(NSString *)key;

/**
 *  保存key对应的value
 */
+ (void)setBoolValue:(BOOL)boolValue WithKey:(NSString *)key;

/**  判断登录状态*/
+ (LoginStatus)getLoginStatus;

/**获取定位城市*/
+ (CityModel *)getLocationCity;

/**保存定位城市*/
+ (void)setLocationCity:(CityModel *)locationCity;

/**获取用户选择城市*/
+ (CityModel *)getSelectedCity;

/**保存用户选择城市*/
+ (void)setSelectedCity:(CityModel *)selectedCity;

/**获取用户已读职位描述文件*/
+ (NSMutableDictionary *)getReadedMarkDict;

/**保存用户已读职位描述文件*/
+ (void)setReadedMarkDict:(NSMutableDictionary *)readedMarkDict;

/**获取本地缓存地区列表 api/jobs/cityabc*/
+ (NSDictionary *)getChangeCityDict;

/**保存地区列表 api/jobs/cityabc至本地缓存*/
+ (void)saveChangeCityDict:(NSDictionary *)changeCityDict;

/**获取本地缓存薪水列表 /api/jobs/salarylevel*/
+ (NSArray *)getSalaryLevelArray;

/**保存薪水列表 /api/jobs/salarylevel至本地缓存*/
+ (void)saveSalaryLevelDict:(NSDictionary *)salaryLevelDict;

/**获取本地缓存搜索*/
+ (NSMutableArray *)getlishiArray;

/**保存本地缓存搜索*/
+ (void)savelishiDict:(NSMutableArray *)lsArray;

#pragma mark - API接口
/**  验证手机是否注册过*/
//+ (BOOL)isResgisterAbleWithTel:(NSString *)tel;

/**  POST请求*/
+ (void)jsonPostWithURL:(NSString *)url Params:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary *userinfo, NSError *error))completion;

/**  GET请求*/
+ (void)getWithURL:(NSString *)url Params:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary* detailDict, NSError *error))completion;

/** 照片上传*/
+ (void)postWithURL:(NSString *)url Params:(NSDictionary *)params formDataArray:(NSArray *)formDataArray completion:(void (^)(BOOL succeed, NSDictionary* detailDict, NSError *error))completion;

/**
 *  上传地理位置
 */
+ (void)updateLocationWithParams:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary *userinfo, NSError *error))completion;
@end


/**
 *  用来封装文件数据的模型
 */
@interface NCFormData : NSObject
/**
 *  文件数据
 */
@property (nonatomic, strong) NSData *data;

/**
 *  参数名
 */
@property (nonatomic, copy) NSString *name;

/**
 *  文件名
 */
@property (nonatomic, copy) NSString *filename;

/**
 *  文件类型
 */
@property (nonatomic, copy) NSString *mimeType;
@end

