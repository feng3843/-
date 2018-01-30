//
//  GATool.m
//  GuardAngel
//
//  Created by ivy.sun on 16/5/5.
//  Copyright © 2016年 GA. All rights reserved.
//  工具类

#import "GATool.h"
#import "AFNetworking.h"
#import "NSString+date.h"
#import "ConstPCH.h"
#import "LoginViewController.h"
#import "MBProgressHUD+MJ.h"

#pragma mark - API接口
/**后台接口Url*/
 NSString * const  BASE_URL = @"http://192.168.2.188:8080";
//NSString * const  BASE_URL = @"http://guardangel.duapp.com";
//------------------------------------------登录模块---------------------------------/
/**获取注册验证码*/
NSString * const  REGISTER_CODE = @"/api/users/registercode?mobilephone=";
/**验证注册验证码*/
NSString * const  REGISTER_CODE_TEST = @"/api/users/phonecodetest";
/**获取重置密码验证码*/
NSString * const RESET_PASSWORD_CODE = @"/api/users/resetphonecode?mobilephone=";
/**验证重置密码验证码*/
NSString * const  RESET_PASSWORD_CODE_TEST = @"";
/**注册*/
 NSString * const  REGISTER = @"/api/users/register";
/**登录*/
NSString * const  LOGIN = @"/api/users/login";
/**修改密码*/
NSString * const  RESET_PASSWORD = @"/api/users/changepassword";
/**上传DeviceToken*/
NSString * const  upload_DeviceToken = @"/api/users/uploadDeviceToken";

//------------------------------------------求职模块---------------------------------/
/**薪水列表*/
NSString * const  SALARY_LEVEL = @"/api/jobs/salarylevel";
/**地区列表*/
NSString * const  AREAS = @"/api/jobs/areas";
/**按城市查询职位列表*/
NSString * const  QUERY_ON_AREA = @"/api/jobs/queryonarea";
/**按经纬度查询城市*/
NSString * const  QUERY_CITY =  @"/api/service/cityID";
/**职位详情*/
NSString * const  JOB_DETAIL = @"/api/jobs/jobdetail";
/**职位收藏*/
NSString * const  JOB_FAVORITE = @"/api/jobs/jobfavorite";
/**职位投递简历*/
NSString * const  JOB_SUBMIT = @"/api/jobs/jobsubmit";
/**公司详情*/
NSString * const  COMPANY_DETAIL = @"/api/jobs/compdetail";
/**公司评分*/
NSString * const  COMPANY_RATE = @"/api/jobs/rateCompany";
/**公司拉黑*/
NSString * const  BLOCK_COMP = @"/api/jobs/blockComp";
/**移除公司黑名单*/
NSString * const  CLEAR_COMP = @"/api/jobs/clearComp";
/**我的基本数据*/
NSString * const  MY_BASE = @"/api/jobs/myBase";
/**获取公司所有招聘职位*/
NSString * const  COMPANY_JOBS = @"/api/jobs/compJobs";
/**关注/取消关注公司*/
NSString * const  COMPANY_FOLLOW = @"/api/jobs/compfollow";
/**获取地区pickView列表数据*/
NSString * const  PICK_AREA = @"/api/jobs/pickArea";
/**获取简历*/
NSString * const  RESUME = @"/api/jobs/resume";
/**保存简历基本信息*/
NSString * const  SAVE_BASE =@"/api/jobs/saveBase";
/**保存简历求职意向*/
NSString * const  SAVE_TARGET =@"/api/jobs/saveTarget";
/**保存简历教育经历*/
NSString * const  SAVE_EDU = @"/api/jobs/saveEdu";
/**保存简历工作经历*/
NSString * const  SAVE_WORK = @"/api/jobs/saveWork";
/**保存简历技能*/
NSString * const  SAVE_SKILL = @"/api/jobs/saveSkill";
/**保存自我评价*/
NSString * const  SAVE_COMMENT = @"/api/jobs/saveResumeComment";
/**我的相关公司*/
NSString * const  MY_COMP = @"/api/jobs/myComp";
/**搜索公司*/
NSString * const  SEARCH_COMP = @"/api/jobs/searchComp";
/**收藏、投递的职位列表*/
NSString * const  REF_JOBS_ON = @"/api/jobs/RefJobsOn";
/**获得保安的额外信息*/
NSString * const  Get_Addition = @"/api/jobs/getaddition";
/**保存家庭成员*/
NSString * const  save_Family = @"/api/jobs/saveFamily";
/**保存社会关系*/
NSString * const  save_Social = @"/api/jobs/saveSocial";
/**保存奖惩信息*/
NSString * const  save_Reward = @"/api/jobs/saveReward";
/**获取面试通知*/
NSString * const  get_Message = @"/api/jobs/getMessage";
/**同意入职*/
//NSString * const  get_Message = @"";


//------------------------------------------好友模块---------------------------------/
/**好友列表*/
NSString * const  GET_FRIENDS = @"/api/friends/getfriends";
/**同事列表*/
NSString * const  GET_COLLEAGE = @"/api/friends/getColleague";
/**好友详情*/
NSString * const  USER_DETAILS = @"/api/friends/userDetails";
/**待验证的好友列表*/
NSString * const  GET_APPLY_FRIENDS = @"/api/friends/userRequest";
/**附近人列表*/
NSString * const  GET_NEARBY = @"/api/friends/nearbyusers";
/**请求添加好友*/
NSString * const  APPLY_FRIENDS = @"/api/friends/friendRequest";
/**同意添加好友*/
NSString * const  CONFIRM_FRIEND = @"/api/friends/confirmrequest";
/**黑名单列表*/
NSString * const  BLOCK_LIST = @"/api/friends/blacklist";
/**拉黑*/
NSString * const  BLOCK_USER = @"/api/friends/blockuser";
/**移出黑名单*/
NSString * const  UNBLOCK_USER = @"/api/friends/removeBlack";
/**删除好友*/
NSString * const  DISFRIEND = @"/api/friends/disfriend";
/**搜索陌生人（添加新好友）*/
NSString * const  SEARCH_NEW_FRIENDS = @"/api/friends/searchfriend";
/**搜索已存在好友*/
NSString * const  SEARCH_FRIEND = @"/api/friends/searchInFriend";

//------------------------------------------首页---------------------------------/
/**获取角色信息*/
NSString * const  GET_INFO = @"/api/jobs/getindex";

//------------------------------------------求才---------------------------------/
/**按条件筛选保安*/
NSString * const  QUERY_SEEKER = @"/api/hunter/QuerySeeker";
/**已投列表*/
NSString * const  LIST_REQUEST = @"/api/hunter/listRequestSeeker";
/**已投列表2*/
NSString * const  Job_Recive_Preview = @"/api/hunter/jobRecivePreview";
/**投递某职位的所有保安列表*/
NSString * const  GuardList_With_JobID = @"/api/hunter/guardListWithJobID";
/**查看投递求职者的简历*/
NSString * const  resume_From_JobSubmitID = @"/api/hunter/resumeFromJobSubmitID";

/**收藏列表*/
NSString * const  LIST_FAVORITE = @"/api/hunter/listFavoriteSeeker";
/**人才简历*/
NSString * const  RECRUIT_RESUME = @"/api/hunter/resume";
/**收藏保安*/
NSString * const  Favorite_Seeker = @"/api/hunter/FavoriteSeeker";
/**面试*/
NSString * const  In_Seeker = @"/api/hunter/InSeeker";
/**拒绝*/
NSString * const  Reject_Seeker = @"/api/hunter/RejectSeeker";
/**取消收藏保安*/
NSString * const  Cancel_Seeker = @"/api/hunter/CancelSeeker";
/**创建或编辑职位*/
NSString * const  Edit_Job= @"/api/hunter/EditJob";
/**删除职位*/
NSString * const  Delete_Job= @"/api/hunter/DeleteJob";
/**编辑公司信息*/
NSString * const  Edit_CompDetail = @"/api/hunter/editCompDetail";
/**临保列表*/
NSString * const  list_TempJob = @"/api/hunter/listTempJob";
/**创建/编辑临保列表*/
NSString * const  edit_TempJob = @"/api/hunter/editTempJob";
/**获取临保详情*/
NSString * const  detail_TempJob = @"/api/hunter/detailTempJob";
/**删除临保*/
NSString * const  delete_TempJob = @"/api/hunter/deleteTempJob";
/**公司认证*/
NSString * const  authentication = @"/api/hunter/authentication";
/**通知入职*/
NSString * const  GotSeeker = @"/api/hunter/GotSeeker";
/**获得职业生涯*/
NSString * const  getJoblife = @"/api/hunter/getJoblife";
/**获得员工列表*/
NSString * const  list_emploree = @"/api/rate/list_emploree";
/**同意／拒绝入职*/
NSString * const  agreein = @"/api/hunter/agreein";
/**对员工进行评价*/
NSString * const  rateEmployee = @"/api/rate/rateEmployee";
/**获取员工历史评价列表*/
NSString * const  list_ratehistory = @"/api/rate/list_ratehistory";


//------------------------------------------通知---------------------------------/
/**定位完成通知*/
NSString * const NOTIFICATION_LOCATION_COMPLISH = @"NOTIFICATION_LOCATION_COMPLISH";
/**用户忽略定位*/
NSString * const NOTIFICATION_LOCATION_COMPLISH_BUT_IGNORE = @"NOTIFICATION_LOCATION_COMPLISHBUT_IGNORE";
/**显示遮罩*/
NSString * const NOTIFICATION_SHOW_COVER = @"NOTIFICATION_SHOW_COVER";
/**隐藏遮罩*/
NSString * const NOTIFICATION_HIDE_COVER = @"NOTIFICATION_HIDE_COVER";
/**用户取消登录*/
NSString * const NOTIFICATION_USER_CANCEL_LOGIN = @"NOTIFICATION_USER_CANCEL_LOGIN";
/**登录成功*/
NSString * const NOTIFICATION_USER_SUCCESS_LOGIN = @"NOTIFICATION_USER_SUCCESS_LOGIN";
/**注册成功*/
NSString * const NOTIFICATION_USER_SUCCESS_REGIST= @"NOTIFICATION_USER_SUCCESS_REGIST";
/**账号过期*/
NSString * const NOTIFICATION_NEED_RELOGIN = @"NOTIFICATION_NEED_RELOGIN";
/**网络不通*/
NSString * const NOTIFICATION_NO_NET_CONNECT = @"NOTIFICATION_NO_NET_CONNECT";
/**新好友请求*/
NSString * const NOTIFICATION_newFriend = @"NOTIFICATION_newFriend";
/**简历被修改*/
NSString * const NOTIFICATION_newInterview = @"NOTIFICATION_newInterview";
/**收到新简历投递*/
NSString * const NOTIFICATION_newResume = @"NOTIFICATION_newResume";





#define UserDefault [NSUserDefaults standardUserDefaults]

@interface GATool()
@property(nonatomic,strong)AFHTTPSessionManager *manager;
@end

@implementation GATool

+(GATool *)tool
{
    static GATool *tool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tool = [[GATool alloc] init];
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",nil];
        manager.requestSerializer.timeoutInterval = 15;
        tool .manager =manager;
    });
    return tool;
}

/**
 *  所有的POST请求封装
 */
+ (void)jsonPostWithURL:(NSString *)url Params:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary *userinfo, NSError *error))completion{
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFJSONRequestSerializer serializer];
//    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",nil];
//    manager.requestSerializer.timeoutInterval = 15;
    GATool *tool = [GATool tool];
    NSLog(@"%p",tool.manager);
    GALog(@"\n\n↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓POST请求URL↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓\n%@\n↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓发送参数↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓\n%@\n\n",url,params);
    [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_SHOW_COVER object:nil];
    [tool.manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_HIDE_COVER object:nil];
        GALog(@"\n\n↓↓↓↓↓↓结果:↓↓↓↓↓↓↓↓↓\n%@\n\n",responseObject);
        if([responseObject[@"code"] integerValue] == 0){
            completion(TRUE,responseObject,nil);
        }else if ([responseObject[@"code"] intValue] == 4009|| [responseObject[@"code"] intValue] == 4010) {
            [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_NEED_RELOGIN object:nil];
        }else if ([responseObject[@"code"] intValue] == -1) {
            [MBProgressHUD showError:@"出错啦，检查一下吧！"];
            completion(FALSE,responseObject,nil);
        }else{
            completion(FALSE,responseObject,nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_HIDE_COVER object:nil];
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_NO_NET_CONNECT object:nil];
        completion(FALSE,nil,error);
        GALog(@"URL错误！！！！");
    }];
}

/**
 *  所有的get请求封装
 */
+ (void)getWithURL:(NSString *)url Params:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary* userinfo, NSError *error))completion{
    GATool *tool = [GATool tool];
    NSLog(@"%p",tool.manager);
    GALog(@"\n\n↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓GET请求URL↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓\n%@\n↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓发送参数↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓\n%@\n\n",url,params);
    [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_SHOW_COVER object:nil];
    [tool.manager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        GALog(@"\n\n↓↓↓↓↓↓结果:↓↓↓↓↓↓↓↓↓\n%@\n\n",responseObject);
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_HIDE_COVER object:nil];
        if([responseObject[@"code"] integerValue] == 0){
            completion(TRUE,responseObject,nil);
        }else{
            completion(FALSE,responseObject,nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_HIDE_COVER object:nil];
        [[NSNotificationCenter defaultCenter]postNotificationName:NOTIFICATION_NO_NET_CONNECT object:nil];
        completion(FALSE,nil,error);
        GALog(@"URL错误！！！！");
    }];
}

/**
 *  上传文件
 */
+ (void)postWithURL:(NSString *)url Params:(NSDictionary *)params formDataArray:(NSArray *)formDataArray completion:(void (^)(BOOL succeed, NSDictionary* userinfo, NSError *error))completion
{
    GATool *tool = [GATool tool];
    NSLog(@"%p",tool.manager);
    [tool.manager POST:url parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull totalFormData) {
        for (NCFormData *formData in formDataArray) {
            [totalFormData appendPartWithFileData:formData.data name:formData.name fileName:formData.filename mimeType:formData.mimeType];
        }
    } progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        GALog(@"%@",responseObject[@"code"]);
        if([responseObject[@"code"] integerValue] == 0){
            completion(TRUE,responseObject,nil);
        }else{
            completion(FALSE,responseObject,nil);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completion(false,nil,error);
    }];
}

/**
 *  上传地理位置
 */
+ (void)updateLocationWithParams:(NSDictionary *)params completion:(void (^)(BOOL succeed, NSDictionary *userinfo, NSError *error))completion{
    GATool *tool = [GATool tool];
    NSString *url = [NSString stringWithFormat:@"%@/api/gps/sendlocation",BASE_URL];
    [tool.manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        GALog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        GALog(@"%@",error);
    }];
}

#pragma mark - 用户相关
/**
 *  获取当前登录用户名
 */
+ (NSString *)getUserName{
    NSData *nameData = [UserDefault dataForKey:@"userName"];
    return [[NSString alloc]initWithData:nameData encoding:NSUTF8StringEncoding];
}

/**
 *  保存登录的用户名
 */
+ (void)setUserName:(NSString *)name{
    NSData *nameData = [name dataUsingEncoding:NSUTF8StringEncoding];
    [UserDefault setObject:nameData forKey:@"userName"];
    [UserDefault synchronize];
}

/**
 *  获取key对应的value
 */
+ (BOOL)getBoolValueByKey:(NSString *)key{
    return [UserDefault boolForKey:key];
}

/**
 *  保存key对应的value
 */
+ (void)setBoolValue:(BOOL)boolValue WithKey:(NSString *)key{
    [UserDefault setBool:boolValue forKey:key];
    [UserDefault synchronize];
}


/**  获取当前登录用户ID*/
+ (NSNumber *)getUserID{
    return  @([UserDefault integerForKey:@"userID"]);
}

/**  设置当前登录用户ID*/
+ (void)setUserID:(NSNumber *)userID{
    [UserDefault setInteger:userID.integerValue forKey:@"userID"];
    [UserDefault synchronize];
}

/**  获取当前登录用户类型*/
+ (NSString *)getUserType{
    NSData *UserType = [UserDefault dataForKey:@"UserType"];
    return [[NSString alloc]initWithData:UserType encoding:NSUTF8StringEncoding];
}

/**  设置当前登录用户类型*/
+ (void)setUserType:(NSString *)UserType{
    NSData *UserTypeData = [UserType dataUsingEncoding:NSUTF8StringEncoding];
    [UserDefault setObject:UserTypeData forKey:@"UserType"];
    [UserDefault synchronize];
}

/**
 *  获取当前登录密码
 */
+ (NSString *)getPwd{
    NSData *pwd = [UserDefault dataForKey:@"Pwd"];
    return [[NSString alloc]initWithData:pwd encoding:NSUTF8StringEncoding];
}

/**
 *  保存登录的密码
 */
+ (void)setPwd:(NSString *)pwd{
    NSData *pwdData = [pwd dataUsingEncoding:NSUTF8StringEncoding];
    [UserDefault setObject:pwdData forKey:@"Pwd"];
    [UserDefault synchronize];
}

///**  读取Tooken*/
//+ (NSString *)getToken{
//    return [GATool isTokenDeprecated]?nil: [UserDefault objectForKey:@"Token"];
//}
//
///**  存储Tooken*/
//+ (void)setToken:(NSString *)token{
//    [UserDefault setObject:token forKey:@"Token"];
//    NSDate *date = [NSDate date];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
//    NSString *tokenCreatedTime = [dateFormatter stringFromDate:date];
//    [UserDefault setObject:tokenCreatedTime forKey:@"tokenCreatedTime"];
//    [UserDefault synchronize];
//}
//
//+ (BOOL)isTokenDeprecated{
//   NSString *tokenCreatedTime = [UserDefault objectForKey:@"tokenCreatedTime"];
//    GALog(@"tokenCreatedTime-->%@",tokenCreatedTime);
//    return tokenCreatedTime == nil ?YES:[tokenCreatedTime isDeprecated];
//}

/**
 *  获取定位城市
 */
+ (CityModel *)getLocationCity{
    CityModel *city = [CityModel new];
    city.code = [[[NSUserDefaults standardUserDefaults] objectForKey:@"locationCityCode"] intValue];
    city.value = [[NSUserDefaults standardUserDefaults] objectForKey:@"locationCityValue"];
    NSLog(@"%d",city.code);
    return city;
}

/**
 *  保存定位城市
 */
+ (void)setLocationCity:(CityModel *)locationCity{
    [UserDefault setObject:[NSNumber numberWithInt:locationCity.code] forKey:@"locationCityCode"];
    [UserDefault setObject:locationCity.value forKey:@"locationCityValue"];
    [UserDefault synchronize];
}

/**获取用户选择城市*/
+ (CityModel *)getSelectedCity{
    CityModel *city = [CityModel new];
    city.code = [[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedCityCode"] intValue];
    city.value = [[NSUserDefaults standardUserDefaults] objectForKey:@"selectedCityValue"];
    NSLog(@"%d",city.code);
    return city;
}

/**保存用户选择城市*/
+ (void)setSelectedCity:(CityModel *)selectedCity{
    [UserDefault setObject:[NSNumber numberWithInt:selectedCity.code] forKey:@"selectedCityCode"];
    [UserDefault setObject:selectedCity.value forKey:@"selectedCityValue"];
    [UserDefault synchronize];
}

+ (LoginStatus)getLoginStatus{
   
    //用户是否登录有效
    NSString * token = [GATool getToken];
     NSLog(@"token:%@   %s",token,__func__);
    if (token != nil && token.length > 0) {
        //有效登录状态
        return LoginStatusValid;
    }else{
        return LoginStatusNever;
    }
}

/**  读取Tooken*/
+ (NSString *)getToken{
    NSString *token = [UserDefault objectForKey:@"Token"] == nil ? @"":[UserDefault objectForKey:@"Token"];
    return token;
}

/**  存储Tooken*/
+ (void)setToken:(NSString *)token{
    [UserDefault setObject:token forKey:@"Token"];
    [UserDefault synchronize];
}

/**获取用户已读职位描述文件*/
+ (NSMutableDictionary *)getReadedMarkDict{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"readedMarkDict.plist"];
    NSMutableDictionary *readedMarkDict = [NSMutableDictionary dictionaryWithContentsOfFile:filePath];
    if (!readedMarkDict){
        return [NSMutableDictionary dictionary];
    }
    return readedMarkDict;
}

/**保存用户已读职位描述文件*/
+ (void)setReadedMarkDict:(NSMutableDictionary *)readedMarkDict{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"readedMarkDict.plist"];
    [readedMarkDict writeToFile:filePath atomically:YES];
}

/**获取本地缓存地区列表 api/jobs/cityabc*/
+ (NSDictionary *)getChangeCityDict{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"changeCity.plist"];
    NSDictionary *changeCityDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    return changeCityDict;
}

/**保存地区列表 api/jobs/cityabc至本地缓存*/
+ (void)saveChangeCityDict:(NSDictionary *)changeCityDict{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"changeCity.plist"];
    [changeCityDict writeToFile:filePath atomically:YES];
}

/**获取本地缓存薪水列表 /api/jobs/salarylevel*/
+ (NSArray *)getSalaryLevelArray{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"salaryLevel.plist"];
    NSArray *changeCityDict = [NSArray arrayWithContentsOfFile:filePath];
    return changeCityDict;
}

/**保存薪水列表 /api/jobs/salarylevel至本地缓存*/
+ (void)saveSalaryLevelDict:(NSDictionary *)salaryLevelDict{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"salaryLevel.plist"];
    [salaryLevelDict writeToFile:filePath atomically:YES];
}

/**获取本地缓存搜索*/
+ (NSMutableArray *)getlishiArray{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"lishiArray.plist"];
    NSMutableArray *changeCityDict = [NSMutableArray arrayWithContentsOfFile:filePath];
    return changeCityDict;
}

/**保存本地缓存搜索*/
+ (void)savelishiDict:(NSMutableArray *)lsArray{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [path stringByAppendingPathComponent:@"lishiArray.plist"];
    [lsArray writeToFile:filePath atomically:YES];
}


@end





/**
 *  用来封装文件数据的模型
 */
@implementation NCFormData
@end

