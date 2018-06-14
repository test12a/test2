using SocoShop.Page;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace TestProject3
{
    
    
    /// <summary>
    ///这是 LoginTest 的测试类，旨在
    ///包含所有 LoginTest 单元测试
    ///</summary>
    [TestClass()]
    public class LoginTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试特性
        // 
        //编写测试时，还可使用以下特性:
        //
        //使用 ClassInitialize 在运行类中的第一个测试前先运行代码
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //使用 ClassCleanup 在运行完类中的所有测试后再运行代码
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //使用 TestInitialize 在运行每个测试前先运行代码
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //使用 TestCleanup 在运行完每个测试后运行代码
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///Login 构造函数 的测试
        ///</summary>
        [TestMethod()]
        public void LoginConstructorTest()
        {
            Login target = new Login();//TODO:初始化为适当的值
            string logname = "1631320206";//TODO:初始化为适当的值
            string loginpass = "123456789";//TODO:初始化为适当的值           
            //Assert.AreEqual(expcted,actual);
            Assert.Inconclusive("TODO: 实现用来验证目标的代码");
            //Assert.Ibconclusive("验证此方法的正确");
        }

        /// <summary>
        ///Login 构造函数 的测试
        ///</summary>
        [TestMethod()]
        public void LoginConstructorTest1()
        {
            Login target = new Login();
            Assert.Inconclusive("TODO: 实现用来验证目标的代码");
        }
    }
}
