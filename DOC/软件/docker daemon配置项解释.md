---
created: 2024-04-11
---

# Docker daemon配置项解释

```js

{
  "allow-nondistributable-artifacts": [], //在这些镜像仓库之间允许“非分发”构建的传输
  "api-cors-header": "", //设置Docker REST API的CORS头
  "authorization-plugins": [], //指定授权插件
  "bip": "", //指定默认桥接网络的IPV4地址
  "bridge": "", //指定默认桥接网络的名称
  "builder": { 
    "gc": { //配置构建垃圾收集
      "enabled": true, //启用构建垃圾收集
      "defaultKeepStorage": "10GB", //默认保留的存储空间
      "policy": [ //垃圾收集策略
        { "keepStorage": "10GB", "filter": ["unused-for=2200h"] },
        { "keepStorage": "50GB", "filter": ["unused-for=3300h"] },
        { "keepStorage": "100GB", "all": true }
      ]
    }
  },
  "cgroup-parent": "", //为所有容器指定默认的cgroup父级
  "containerd": "/run/containerd/containerd.sock", //指定containerd的套接字文件路径
  "containerd-namespace": "docker", //指定containerd的命名空间
  "containerd-plugins-namespace": "docker-plugins", //指定containerd插件的命名空间
  "data-root": "", //设置Docker运行时的数据路径
  "debug": true, //开启或关闭debug模式
  "default-address-pools": [ //设置默认的地址池
    {
      "base": "172.30.0.0/16",
      "size": 24
    },
    {
      "base": "172.31.0.0/16",
      "size": 24
    }
  ],
  "default-cgroupns-mode": "private", //设置默认的cgroup命名空间模式
  "default-gateway": "", //设置默认的IPv4网关
  "default-gateway-v6": "", //设置默认的IPv6网关
  "default-network-opts": {}, //设置默认的网络选项
  "default-runtime": "runc", //设置默认的OCI运行时
  "default-shm-size": "64M", //设置默认的共享内存大小
  "default-ulimits": { //设置默认的ulimits
    "nofile": {
      "Hard": 64000,
      "Name": "nofile",
      "Soft": 64000
    }
  },
  "dns": [], //设置默认的DNS服务器
  "dns-opts": [], //设置DNS选项
  "dns-search": [], //设置DNS搜索域
  "exec-opts": [], //设置执行选项
  "exec-root": "", //设置执行根目录
  "experimental": false, //开启或关闭实验性特性
  "features": {}, //启用或禁用特定的Docker特性
  "fixed-cidr": "", //为默认的桥接网络设置固定的CIDR
  "fixed-cidr-v6": "", //为默认的桥接网络设置固定的IPv6 CIDR
  "group": "", //设置unix组
  "host-gateway-ip": "", //设置主机网关的IP地址
  "hosts": [], //设置Docker daemon监听的地址
  "proxies": { //设置HTTP/HTTPS代理
    "http-proxy": "http://proxy.example.com:80",
    "https-proxy": "https://proxy.example.com:443",
    "no-proxy": "*.test.example.com,.example.org"
  },
  "icc": false, //开启或关闭容器间的网络通信
  "init": false, //开启或关闭Docker的init进程
  "init-path": "/usr/libexec/docker-init", //设置Docker的init进程的路径
  "insecure-registries": [], //添加不安全的镜像仓库
  "ip": "0.0.0.0", //设置默认的绑定IP地址
  "ip-forward": false, //开启或关闭IP转发
  "ip-masq": false, //开启或关闭IP伪装
  "iptables": false, //开启或关闭iptables规则
  "ip6tables": false, //开启或关闭IPv6 iptables规则
  "ipv6": false, //开启或关闭IPv6支持
  "labels": [], //为Docker daemon添加标签
  "live-restore": true, //开启或关闭live restore功能
  "log-driver": "json-file", //设置默认的日志驱动
  "log-level": "", //设置日志级别
  "log-opts": { //设置日志选项
    "cache-disabled": "false",
    "cache-max-file": "5",
    "cache-max-size": "20m",
    "cache-compress": "true",
    "env": "os,customer",
    "labels": "somelabel",
    "max-file": "5",
    "max-size": "10m"
  },
  "max-concurrent-downloads": 3, //设置最大的并发下载数
  "max-concurrent-uploads": 5, //设置最大的并发
    "max-download-attempts": 5, //设置最大的下载尝试次数
  "mtu": 0, //设置默认的最大传输单元
  "no-new-privileges": false, //开启或关闭新特权
  "node-generic-resources": [ //设置节点的通用资源
    "NVIDIA-GPU=UUID1",
    "NVIDIA-GPU=UUID2"
  ],
  "oom-score-adjust": 0, //设置OOM得分调整值
  "pidfile": "", //设置PID文件的路径
  "raw-logs": false, //开启或关闭原始日志
  "registry-mirrors": [], //设置镜像仓库的镜像地址
  "runtimes": { //设置额外的OCI运行时
    "cc-runtime": {
      "path": "/usr/bin/cc-runtime"
    },
    "custom": {
      "path": "/usr/local/bin/my-runc-replacement",
      "runtimeArgs": [
        "--debug"
      ]
    }
  },
  "seccomp-profile": "", //设置默认的seccomp配置文件
  "selinux-enabled": false, //开启或关闭SELinux支持
  "shutdown-timeout": 15, //设置关闭超时时间
  "storage-driver": "", //设置存储驱动
  "storage-opts": [], //设置存储选项
  "swarm-default-advertise-addr": "", //设置Swarm模式下的默认广播地址
  "tls": true, //开启或关闭TLS
  "tlscacert": "", //设置TLS CA证书的路径
  "tlscert": "", //设置TLS证书的路径
  "tlskey": "", //设置TLS密钥的路径
  "tlsverify": true, //开启或关闭TLS的验证
  "userland-proxy": false, //开启或关闭用户态代理
  "userland-proxy-path": "/usr/libexec/docker-proxy", //设置用户态代理的路径
  "userns-remap": "" //设置用户命名空间的映射
}
```
