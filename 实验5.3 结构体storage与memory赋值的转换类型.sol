// 示例1 【storage 转 storage】
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract structtest{
    struct student{
        uint age;
        string name;
    }
    student stu;  //默认storage类型
 
    // storage stu到 storage s的传递，不是副本，是指向 (s是指针，指向stu)，
    function test(student storage s) internal {  
        student storage guy = s;
        guy.name = "chen";
    }   
     
    //返回值在命令窗口展看 output查看  输出 chen （发生改变）
    function  futest() public returns (string memory) {
        test(stu);
        return stu.name;
    }
}

// 示例2 【memory转 storage】
contract structtest2{
    struct  student{
        uint age;
        string  name;
    }
    student stu;  //storage
 
    function test(student memory s) internal {   
        //memory s 传递给 storage stu, 修改s 的成员，对于stu 不产生影响
        stu = s;
        s.name = "chen";
        //如果修改后 再进行传递，对于修改后的s 传递过去，就会改变stu 
        // stu = s;
    }
    // 显示的是 zhang参数， s的修改不起作用
    function  futest() public returns (string memory) {  
        student memory tmp = student(10,"zhang");
        test(tmp);
        return stu.name;
    }
}

// 示例3 【storage转 memory】
contract structtest3{
    struct  student{
        uint age;
        string  name;
    }
    student stu = student(100,"zhang");  
 
    // 内存memory不能改变全局变量storage
    //storage s 形参 是一个指针，引用传递 
    function test(student storage s) pure internal {  
        //storage到 memory， 是叫拷贝,s 拷贝到 guy 内存中的一个副本
        student memory guy = s;  
        guy.name = "chen";
    }
    
    // 还是stu，修改memory 不改变storage 
    function  futest() public view returns (string memory) {
        test(stu);
        return stu.name;
    }
}

// 示例4 【memory转 memory】
contract structtest4{
    struct  student{
        uint age;
        string  name;
    }
    
//memory转memory 是 指针传递, s 赋值给 lina， lina 指向 s
    function test(student memory s) pure internal {   
        student memory lina = s;
        //对lina修改 等于 修改 s 等于修改 guy
        lina.name = "zhang";
    }
    function  futest() public pure returns (string memory) {
        student memory guy =  student(100,"chen");
        test(guy);
        return guy.name;
    }
}