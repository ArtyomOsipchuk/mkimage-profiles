��    ^           �      �     �  �   �     �  -   �  4   �  <   *	     g	     �	     �	  9   �	  "   �	  $   
  %   <
  +   b
  (   �
     �
     �
     �
     �
          $     <  
   O  4   Z     �  6   �     �  "   �     
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  t  �     n  �   p        ,     :   B  6   }     �     �      �  =     $   K  &   p  '   �  /   �  ,   �          0     G     T     g     �     �     �  $   �     �  1   �       *   ,     W     ^  "   e  =   �  .   �  $   �  :        U     \     {  (   �  (   �  B   �  F     !   ^  +   �  (   �     �     �  "   �  A        `     z     �     �  9   �  "     "   /  "   R     u  !   �     �  "   �     �     	          <     R     o     �     �  )   �  ,   �  >      !   X   "   z      �      �   ?   �   3   �   !   !      ;!     \!     m!     ~!  o   �!     "     *"  "   J"     m"  3   �"  G   �"     #     #     '#         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
               
 
Note: This output shows SysV services only and does not include native
      systemd services. SysV configuration data might be overridden by native
      systemd configuration.

 
error reading choice
                     [--initscript <service>]
                     [--slave <link> <name> <path>]*
                 --altdir <directory> --admindir <directory>
          %s --add <name>
          %s --del <name>
          %s --override <name>
          %s [--level <levels>] [--type <type>] <name> %s
        alternatives --auto <name>
        alternatives --config <name>
        alternatives --display <name>
        alternatives --remove <name> <path>
        alternatives --set <name> <path>
   Selection    Command
  link currently points to %s
  slave %s: %s
 %s - priority %d
 %s - status is auto.
 %s - status is manual.
 %s already exists
 %s empty!
 %s has not been configured as an alternative for %s
 %s version %s
 %s version %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (would remove %s
 --type must be 'sysv' or 'xinetd'
 Back Cancel Current `best' version is %s.
 Enter to keep the current selection[+], or type selection number:  Failed to forward service request to systemctl: %m
 No services may be managed by ntsysv!
 Note: Forwarding request to 'systemctl %s %s'.
 Ok Press <F1> for more information on a service. Services There are %d programs which provide '%s'.
 There is %d program that provides '%s'.
 This may be freely redistributed under the terms of the GNU Public License.
 This may be freely redistributed under the terms of the GNU Public License.

 What services should be automatically started? You do not have enough privileges to perform this operation.
 You must be root to run %s.
 admindir %s invalid
 altdir %s invalid
 alternatives version %s
 alternatives version %s - Copyright (C) 2001 Red Hat, Inc.
 bad argument to --levels
 bad mode on line 1 of %s
 bad primary link in %s
 cannot determine current run level
 common options: --verbose --test --help --usage --version
 error reading from directory %s: %s
 error reading info for service %s: %s
 error reading information on service %s: %s
 failed to create %s: %s
 failed to glob pattern %s: %s
 failed to link %s -> %s: %s
 failed to make symlink %s: %s
 failed to open %s/init.d: %s
 failed to open %s: %s
 failed to open directory %s: %s
 failed to read %s: %s
 failed to read link %s: %s
 failed to remove %s: %s
 failed to remove link %s: %s
 failed to replace %s with %s: %s
 link %s incorrect for slave %s (%s %s)
 link changed -- setting mode to manual
 link points to no alternative -- setting mode to manual
 missing path for slave %s in %s
 numeric priority expected in %s
 off on only one of --list, --add, --del, or --override may be specified
 only one runlevel may be specified for a chkconfig query
 path %s unexpected in %s
 path to alternate expected in %s
 reading %s
 running %s
 service %s does not support chkconfig
 service %s supports chkconfig, but is not referenced in any runlevel (run 'chkconfig --add %s')
 slave path expected in %s
 the primary link for %s must be %s
 unexpected end of file in %s
 unexpected line in %s: %s
 usage:   %s [--list] [--type <type>] [name]
 usage: alternatives --install <link> <name> <path> <priority>
 would link %s -> %s
 would remove %s
 xinetd based services:
 Project-Id-Version: chkconfig
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2012-02-14 08:17+0000
Last-Translator: notting <notting@redhat.com>
Language-Team: Chinese (China) (http://www.transifex.net/projects/p/fedora/language/zh_CN/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=1; plural=0
 
 
注意：该输出结果只显示 SysV 服务，并不包含原生 systemd 服务。SysV 配置数据可能被原生 systemd 配置覆盖。 
 
选项读取出错
                     [--initscript <服务>]
                     [--slave <链接> <名称> <路径>]*
                 --altdir <目录> --admindir <目录>
          %s --add <名称>
          %s --del <名称>
          %s --override <名称>
          %s [--level <级别>] [--type <类型>] <名称> %s
        alternatives --auto <名称>
        alternatives --config <名称>
        alternatives --display <名称>
        alternatives --remove <名称> <路径>
        alternatives --set <名称> <路径>
   选项    命令
 链接当前指向 %s
 从 %s：%s
 %s - 优先度 %d
 %s - 状态为自动。
 %s - 状态为手工。
 %s 已经存在
 %s 为空！
 未将 %s 配置为 %s 的备用项
 %s 版本 %s 
 %s 版本 %s - 版权 (C) 1997-2000 红帽公司
 将移除 %s
 --type 必须是“sysv”或“xinetd”
 后退 取消 当前“最佳”版本是 %s。
 按 Enter 保留当前选项[+]，或者键入选项编号： 未能将服务请求转发至 systemctl：%m
 没有服务可由 ntsysv 管理！
 注意：正在将请求转发到“systemctl %s %s”。
 确定 按 <F1> 获取服务详情。 服务 共有 %d 个提供“%s”的程序。
 共有 %d 个提供“%s”的程序。
 在 GNU 公共许可条款下，本软件可以自由重发行。
 在 GNU 公共许可条款下，本软件可被自由地重发行。

 哪些服务应该自动启动？ 您没有足够权限执行这项操作。
 您必须是根用户才能运行 %s。
 admindir %s 无效
 altdir %s 无效
 alternatives（备用）版本 %s
 alternatives（备用）版本 %s - 版权 (C) 2001 红帽公司
 --levels 参数错误⏎
 %s 第1行的模式错误
 %s 中的首要链接错误
 无法判断当前运行级别
 公用选项：--verbose --test --help --usage --version
 从目录 %s 中读取出错：%s
 服务 %s 信息读取出错：%s
 服务 %s 信息读取出错：%s
 %s 创建失败：%s
 glob 模式 %s 执行失败：%s
 %s -> %s 链接失败：%s
 符号链接 %s 建立失败：%s
 %s/init.d 打开失败：%s
 %s 打开失败：%s
 目录 %s 打开失败：%s
 %s 读取失败：%s
 链接 %s 读取失败：%s
 %s 移除失败：%s
 链接 %s 移除失败：%s
 未能将 %s 替换为 %s：%s
 从 %s 的链接 %s 不正确（%s %s）
 链接已更改 -- 正将模式设为手工
 链接未指向任何备用项 -- 正在将模式设为手工
 从 %s 的路径缺失于 %s 中
 %s 中预期出现数字优先度
 关 开 --list、--add、--del 和 --override 只能指定其中之一
 只能为 chkconfig 查询指定一个运行级别
 路径 %s 意外出现在 %s 中
  %s 中预期出现备用路径
 正在读取 %s
 正在运行 %s
 服务 %s 不支持 chkconfig
 服务 %s 支持 chkconfig，但它未在任何运行级别中被引用（请运行“chkconfig --add %s”）
 %s 中预期出现从路径
 %s 的首要链接必须是 %s
 %s 中意外出现文件结束符
 %s 中意外出现行：%s
 用法：   %s [--list] [--type <类型>] [名称]
 用法：alternatives --install <链接> <名称> <路径> <优先度>
 将链接 %s -> %s
 将移除 %s
 基于 xinetd 的服务：
 