const base = {
    get() {
        return {
            url : "http://localhost:8080/djangoqkby2/",
            name: "djangoqkby2",
            // 退出到首页链接
            indexUrl: ''
        };
    },
    getProjectName(){
        return {
            projectName: "医疗机构药品及耗材信息管理系统+"
        } 
    }
}
export default base
