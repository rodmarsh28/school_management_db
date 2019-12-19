/*
 Navicat Premium Data Transfer

 Source Server         : DFCPSGENERALDB
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : localhost:1433
 Source Catalog        : 711PayrollDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 18/12/2019 14:17:53
*/


-- ----------------------------
-- Table structure for tblBenefitsPaymentSum
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBenefitsPaymentSum]') AND type IN ('U'))
	DROP TABLE [dbo].[tblBenefitsPaymentSum]
GO

CREATE TABLE [dbo].[tblBenefitsPaymentSum] (
  [premsID] int  IDENTITY(1,1) NOT NULL,
  [payrollID] varchar(50) COLLATE Latin1_General_CI_AS  NULL,
  [empPayrollTransNo] int  NULL,
  [erSSS] money  NULL,
  [erPI] money  NULL,
  [erPH] money  NULL
)
GO

ALTER TABLE [dbo].[tblBenefitsPaymentSum] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblBenefitsPaymentSum
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblBenefitsPaymentSum] ON
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'11', N'PR-00001', N'13', N'.0000', N'.0000', N'.0000')
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'12', N'PR-00001', N'14', N'.0000', N'.0000', N'.0000')
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'13', N'PR-00001', N'15', N'.0000', N'.0000', N'.0000')
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'14', N'PR-00001', N'16', N'.0000', N'.0000', N'.0000')
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'15', N'PR-00001', N'17', N'.0000', N'.0000', N'.0000')
GO

INSERT INTO [dbo].[tblBenefitsPaymentSum] ([premsID], [payrollID], [empPayrollTransNo], [erSSS], [erPI], [erPH]) VALUES (N'16', N'PR-00001', N'18', N'.0000', N'.0000', N'.0000')
GO

SET IDENTITY_INSERT [dbo].[tblBenefitsPaymentSum] OFF
GO


-- ----------------------------
-- Table structure for tblChildrenInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblChildrenInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblChildrenInfo]
GO

CREATE TABLE [dbo].[tblChildrenInfo] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [lastname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [firstname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [middlename] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblChildrenInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblCompany
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompany]') AND type IN ('U'))
	DROP TABLE [dbo].[tblCompany]
GO

CREATE TABLE [dbo].[tblCompany] (
  [companyID] int  IDENTITY(1,1) NOT NULL,
  [companyName] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [companyAddress] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [companyHeader] image  NULL,
  [companyLogo] image  NULL
)
GO

ALTER TABLE [dbo].[tblCompany] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblCompany
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblCompany] ON
GO

INSERT INTO [dbo].[tblCompany] ([companyID], [companyName], [companyAddress], [companyHeader], [companyLogo]) VALUES (N'1', N'D'' PERFECT PAIR', N'BULA, GENERAL SANTOS CITY', 0x, 0x)
GO

SET IDENTITY_INSERT [dbo].[tblCompany] OFF
GO


-- ----------------------------
-- Table structure for tblDesciplinaryAction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDesciplinaryAction]') AND type IN ('U'))
	DROP TABLE [dbo].[tblDesciplinaryAction]
GO

CREATE TABLE [dbo].[tblDesciplinaryAction] (
  [descActionNo] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [date] datetime2(7)  NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [typeofViolation] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [actionTaken] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [punishDateFrom] datetime2(7)  NULL,
  [punishDateTo] datetime2(7)  NULL,
  [detailsofincrement] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [preparedby] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblDesciplinaryAction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblEmployeesInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployeesInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblEmployeesInfo]
GO

CREATE TABLE [dbo].[tblEmployeesInfo] (
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [lastname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [firstname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [middlename] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [address] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [contactNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [homeNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [religion] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [gender] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [birthdate] datetime2(7)  NULL,
  [civilstatus] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [department] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [division] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [position] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [rate] decimal(20,2)  NULL,
  [grade] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [payMethod] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [dateHired] datetime2(7)  NULL,
  [workingStatus] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [field] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [sssNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [tinNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [piNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [phNo] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [sssDedDate] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [whDedDate] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [piDedDate] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phDedDate] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [allowBenefitsDeduction] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [remarks] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblEmployeesInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblEmployeesInfo
-- ----------------------------
INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00003', N'PACO', N'JESSA', N'', N'', N'', N'', N'', N'Female', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Updated Last 07/18/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00004', N'TOLETE', N'LYKA MAE', N'', N'', N'', N'', N'', N'Male', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Updated Last 07/18/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00005', N'PEREZ', N'GLORY ROSE', N'', N'', N'', N'', N'', N'Female', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Updated Last 07/18/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00006', N'ARMOLA', N'VERGEL', N'', N'', N'', N'', N'', N'Female', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'1', N'1', N'1', N'1', N'', N'', N'', N'', N'Yes', N'Updated Last 10/08/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00007', N'SANCHEZ', N'GLADYS', N'', N'', N'', N'', N'', N'Female', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Employees Info Added 07/18/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00008', N'LABAJO', N'CHRISELMAE', N'', N'', N'', N'', N'', N'Female', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Employees Info Added 07/18/2019')
GO

INSERT INTO [dbo].[tblEmployeesInfo] VALUES (N'EN-00009', N'ALCANSADO', N'KEITH', N'', N'', N'', N'', N'', N'Male', N'2019-07-18 00:00:00.0000000', N'Single', N'', N'313', N'STAFF', N'311.00', N'313', N'Daily', N'2019-07-18 00:00:00.0000000', N'', N'15 Days', N'1', N'1', N'1', N'1', N'', N'', N'', N'', N'Yes', N'Updated Last 10/08/2019')
GO


-- ----------------------------
-- Table structure for tblLeave
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLeave]') AND type IN ('U'))
	DROP TABLE [dbo].[tblLeave]
GO

CREATE TABLE [dbo].[tblLeave] (
  [leaveNo] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [dateFilled] datetime2(7)  NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [leaveType] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [reason] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [dateFrom] datetime2(7)  NULL,
  [dateTo] datetime2(7)  NULL,
  [totalDays] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [withpay] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [remarks] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblLeave] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblPayroll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPayroll]') AND type IN ('U'))
	DROP TABLE [dbo].[tblPayroll]
GO

CREATE TABLE [dbo].[tblPayroll] (
  [payrollID] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [dateCreated] datetime2(7)  NULL,
  [dateFrom] datetime2(7)  NULL,
  [dateTo] datetime2(7)  NULL,
  [totalEmployees] int  NULL,
  [totalOvertime] money  NULL,
  [totalGrossPay] money  NULL,
  [totalDeduction] money  NULL,
  [totalNetpay] money  NULL,
  [preparedBy] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [remarks] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblPayroll] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblPayrollofEmployees
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPayrollofEmployees]') AND type IN ('U'))
	DROP TABLE [dbo].[tblPayrollofEmployees]
GO

CREATE TABLE [dbo].[tblPayrollofEmployees] (
  [empPayrollTransNo] int  IDENTITY(1,1) NOT NULL,
  [payrollID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [totalWorkedHours] decimal(20,2)  NULL,
  [absent] decimal(20,2)  NULL,
  [rhd] decimal(20,2)  NULL,
  [nwhd] decimal(20,2)  NULL,
  [regHolidays] decimal(20,2)  NULL,
  [NonWorkHolidays] decimal(20,2)  NULL,
  [overtimeHRS] decimal(20,2)  NULL,
  [restdayReportHRS] decimal(20,2)  NULL,
  [lateUTMins] decimal(20,2)  NULL,
  [NSDHours] decimal(20,2)  NULL,
  [grossPay] decimal(20,2)  NULL,
  [deduction] decimal(20,2)  NULL,
  [netpay] decimal(20,2)  NULL
)
GO

ALTER TABLE [dbo].[tblPayrollofEmployees] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblPayrollofEmployeesDeductions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPayrollofEmployeesDeductions]') AND type IN ('U'))
	DROP TABLE [dbo].[tblPayrollofEmployeesDeductions]
GO

CREATE TABLE [dbo].[tblPayrollofEmployeesDeductions] (
  [payrollID] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [empPayrollTransNo] int  NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [late_undertime] decimal(20,2)  NULL,
  [cfVariation] decimal(20,2)  NULL,
  [POS_shortage] decimal(20,2)  NULL,
  [penalties] decimal(20,2)  NULL,
  [Others] decimal(20,2)  NULL,
  [sss_prems] decimal(20,2)  NULL,
  [pi_prems] decimal(20,2)  NULL,
  [ph_prems] decimal(20,2)  NULL
)
GO

ALTER TABLE [dbo].[tblPayrollofEmployeesDeductions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblPayrollofEmployeesGrossPay
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPayrollofEmployeesGrossPay]') AND type IN ('U'))
	DROP TABLE [dbo].[tblPayrollofEmployeesGrossPay]
GO

CREATE TABLE [dbo].[tblPayrollofEmployeesGrossPay] (
  [payrollID] varchar(255) COLLATE Latin1_General_CI_AS  NOT NULL,
  [empPayrollTransNo] int  NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [basicPay] decimal(20,2)  NULL,
  [rhPay] decimal(20,2)  NULL,
  [nwhPay] decimal(20,2)  NULL,
  [otPay] decimal(20,2)  NULL,
  [rdrPay] decimal(20,2)  NULL,
  [nsdPay] decimal(20,2)  NOT NULL,
  [load_allowance_transpo] decimal(20,2)  NULL
)
GO

ALTER TABLE [dbo].[tblPayrollofEmployeesGrossPay] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblSpouseInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSpouseInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblSpouseInfo]
GO

CREATE TABLE [dbo].[tblSpouseInfo] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [employeeID] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [lastname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [firstname] varchar(255) COLLATE Latin1_General_CI_AS  NULL,
  [middlename] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblSpouseInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblSSS_cont_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSSS_cont_table]') AND type IN ('U'))
	DROP TABLE [dbo].[tblSSS_cont_table]
GO

CREATE TABLE [dbo].[tblSSS_cont_table] (
  [salaryF] decimal(20,2)  NOT NULL,
  [salaryT] decimal(20,2)  NULL,
  [salary] decimal(20,2)  NULL,
  [er] decimal(20,2)  NULL,
  [ee] decimal(20,2)  NULL,
  [ec] decimal(20,2)  NULL,
  [total] decimal(20,2)  NULL
)
GO

ALTER TABLE [dbo].[tblSSS_cont_table] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblSSS_cont_table
-- ----------------------------
INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'.00', N'2249.99', N'2000.00', N'160.00', N'80.00', N'10.00', N'250.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'2250.00', N'2749.99', N'2500.00', N'200.00', N'100.00', N'10.00', N'310.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'2750.00', N'3249.99', N'3000.00', N'240.00', N'120.00', N'10.00', N'370.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'3250.00', N'3749.99', N'3500.00', N'280.00', N'140.00', N'10.00', N'430.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'3750.00', N'4249.99', N'4000.00', N'320.00', N'160.00', N'10.00', N'490.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'4250.00', N'4749.99', N'4500.00', N'360.00', N'180.00', N'10.00', N'550.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'4750.00', N'5249.99', N'5000.00', N'400.00', N'200.00', N'10.00', N'610.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'5250.00', N'5749.99', N'5500.00', N'440.00', N'220.00', N'10.00', N'670.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'5750.00', N'6249.99', N'6000.00', N'480.00', N'240.00', N'10.00', N'730.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'6250.00', N'6749.99', N'6500.00', N'520.00', N'260.00', N'10.00', N'790.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'6750.00', N'7249.99', N'7000.00', N'560.00', N'280.00', N'10.00', N'850.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'7250.00', N'7749.99', N'7500.00', N'600.00', N'300.00', N'10.00', N'910.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'7750.00', N'8249.99', N'8000.00', N'640.00', N'320.00', N'10.00', N'970.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'8250.00', N'8749.99', N'8500.00', N'680.00', N'340.00', N'10.00', N'1030.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'8750.00', N'9249.99', N'9000.00', N'720.00', N'360.00', N'10.00', N'1090.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'9250.00', N'9749.99', N'9500.00', N'760.00', N'380.00', N'10.00', N'1150.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'9750.00', N'10249.99', N'10000.00', N'800.00', N'400.00', N'10.00', N'1210.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'10250.00', N'10749.99', N'10500.00', N'840.00', N'420.00', N'10.00', N'1270.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'10750.00', N'11249.99', N'11000.00', N'880.00', N'440.00', N'10.00', N'1330.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'11250.00', N'11749.99', N'11500.00', N'920.00', N'460.00', N'10.00', N'1390.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'11750.00', N'12249.99', N'12000.00', N'960.00', N'480.00', N'10.00', N'1450.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'12250.00', N'12749.99', N'12500.00', N'1000.00', N'500.00', N'10.00', N'1510.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'12750.00', N'13249.99', N'13000.00', N'1040.00', N'520.00', N'10.00', N'1570.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'13250.00', N'13749.99', N'13500.00', N'1080.00', N'540.00', N'10.00', N'1630.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'13750.00', N'14249.99', N'14000.00', N'1120.00', N'560.00', N'10.00', N'1690.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'14250.00', N'14749.99', N'14500.00', N'1160.00', N'580.00', N'10.00', N'1750.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'14750.00', N'15249.99', N'15000.00', N'1200.00', N'600.00', N'30.00', N'1830.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'15250.00', N'15749.99', N'15500.00', N'1240.00', N'620.00', N'30.00', N'1890.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'15750.00', N'16249.99', N'16000.00', N'1280.00', N'640.00', N'30.00', N'1950.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'16250.00', N'16749.99', N'16500.00', N'1320.00', N'660.00', N'30.00', N'2010.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'16750.00', N'17249.99', N'17000.00', N'1360.00', N'680.00', N'30.00', N'2070.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'17250.00', N'17749.99', N'17500.00', N'1400.00', N'700.00', N'30.00', N'2130.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'17750.00', N'18249.99', N'18000.00', N'1440.00', N'720.00', N'30.00', N'2190.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'18250.00', N'18749.99', N'18500.00', N'1480.00', N'740.00', N'30.00', N'2250.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'18750.00', N'19249.99', N'19000.00', N'1520.00', N'760.00', N'30.00', N'2310.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'19250.00', N'19749.99', N'19500.00', N'1560.00', N'780.00', N'30.00', N'2370.00')
GO

INSERT INTO [dbo].[tblSSS_cont_table] VALUES (N'19750.00', N'250000.00', N'20000.00', N'1600.00', N'800.00', N'30.00', N'2430.00')
GO


-- ----------------------------
-- Table structure for tblSystemSettings
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSystemSettings]') AND type IN ('U'))
	DROP TABLE [dbo].[tblSystemSettings]
GO

CREATE TABLE [dbo].[tblSystemSettings] (
  [systemID] int  NOT NULL,
  [backupDir] varchar(255) COLLATE Latin1_General_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblSystemSettings] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[tblUsers]
GO

CREATE TABLE [dbo].[tblUsers] (
  [userID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [username] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isActive] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblUsers
-- ----------------------------
INSERT INTO [dbo].[tblUsers] VALUES (N'USR-00001', N'admin', N'1234', N'Rodmar Dumago', N'Admin', N'Yes')
GO

INSERT INTO [dbo].[tblUsers] VALUES (N'USR-00002', N'rodmarsh28', N'1234', N'TEST A. ADAS', N'PAYROLL OFFICER', N'YES')
GO


-- ----------------------------
-- Procedure structure for get_sssloan_summary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_sssloan_summary]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_sssloan_summary]
GO

CREATE PROCEDURE [dbo].[get_sssloan_summary]
@monthNo as int
AS
BEGIN
select department,sssNo,'Salary Loan',tblPayrollofEmployees.employeeID,lastname + ', ' + firstname + ' ' + middlename + '.',sssLoans
from tblPayrollofEmployees
INNER JOIN tblEmployeesInfo on tblEmployeesInfo.employeeID = tblPayrollofEmployees.employeeID
inner join tblPayroll on tblPayrollofEmployees.payrollID = tblPayroll.payrollID
where sssLoans <> 0 and  month(dbo.tblPayroll.dateTo) = @monthNo
END
GO


-- ----------------------------
-- Procedure structure for get_piloan_summary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_piloan_summary]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_piloan_summary]
GO

CREATE PROCEDURE [dbo].[get_piloan_summary]
@monthNo as int
AS
BEGIN
select department,piNo,'Salary Loan',tblPayrollofEmployees.employeeID,lastname + ', ' + firstname + ' ' + middlename + '.',piLoans
from tblPayrollofEmployees
INNER JOIN tblEmployeesInfo on tblEmployeesInfo.employeeID = tblPayrollofEmployees.employeeID
inner join tblpayroll on tblPayrollofEmployees.payrollID = tblPayroll.payrollID
where piLoans <> 0 and month(dbo.tblPayroll.dateTo) = @monthNo
END
GO


-- ----------------------------
-- Procedure structure for save_sss_cont_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[save_sss_cont_table]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[save_sss_cont_table]
GO

CREATE PROCEDURE [dbo].[save_sss_cont_table]
@countx as int,
@salaryF as decimal(20,2),
@salaryT as decimal(20,2),
@salary as decimal(20,2),
@ER as decimal(20,2),
@EE as decimal(20,2),
@EC as decimal(20,2),
@TOTAL as decimal(20,2)
AS
BEGIN
if @countx = 0 begin
delete tblSSS_cont_table
end
	INSERT INTO tblSSS_cont_table VALUES(@salaryF,@salaryT,@salary,@ER,@EE,@EC,@TOTAL)
END
GO


-- ----------------------------
-- Procedure structure for insert_update_payroll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_payroll]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_payroll]
GO

CREATE PROCEDURE [dbo].[insert_update_payroll]
@command as int,
@payrollID as varchar(255),
@dfrom as datetime2,
@dto as datetime,
@totEmp as decimal(20,2),
@totOT as decimal(20,2),
@totGP as decimal(20,2),
@totDed as decimal(20,2),
@totNet as decimal(20,2),
@preparedBy as varchar(255),
@remarks as varchar(255)
AS
BEGIN
if @command = 0 begin
insert into tblPayroll values(@payrollID,getdate(),@dfrom,@dto,@totemp,@totOT,@totGP,@totDed,@totNet,@preparedBy,@remarks)
end
END
GO


-- ----------------------------
-- Procedure structure for insert_update_payroll_forEmployees
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_payroll_forEmployees]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_payroll_forEmployees]
GO

CREATE PROCEDURE [dbo].[insert_update_payroll_forEmployees]
@command as int,
@payrollID as varchar(255),
@empid varchar(255),
@totWorkedH as decimal(20,2),
@totAbsent as decimal(20,2),
@rhd as decimal(20,2),
@nwhd as decimal(20,2),
@rh as decimal(20,2),
@nwh as decimal(20,2),
@otH as decimal(20,2),
@rdrd as decimal(20,2),
@lateutM as decimal(20,2),
@nsdH as decimal(20,2),
@grosspay as decimal(20,2),
@deduction as decimal(20,2),
@netpay as decimal(20,2),
@basicpay as decimal(20,2),
@rhpay as decimal(20,2),
@nwhpay as decimal(20,2),
@otPay as decimal(20,2),
@rdrPay as decimal(20,2),
@nsdPay as decimal(20,2),
@load_allowance_trans_pay as decimal(20,2),
@late_undertime as decimal(20,2),
@cfVariation as decimal(20,2),
@pos_shortage as decimal(20,2),
@penalties as decimal(20,2),
@others as decimal(20,2),
@sss_prems as decimal(20,2),
@pi_prems as decimal(20,2),
@ph_prems as decimal(20,2),
@sss_er as decimal(20,2),
@pi_er as decimal(20,2),
@ph_er as decimal(20,2)


AS
BEGIN
if @command = 0 begin
insert into tblPayrollofEmployees values(@payrollID,@empid,@totWorkedH,@totAbsent,@rhd,@nwhd,@rh,@nwh,@oth,@rdrd,@lateutM,@nsdH,@grosspay,@deduction,@netpay)

DECLARE @id int 
select @id = (SELECT max(empPayrollTransNo)) 
from tblPayrollofEmployees

insert into tblPayrollofEmployeesGrossPay values(@payrollID,@id,@empID,@basicpay,@rhpay,@nwhPay,@otPay,@rdrPay,@nsdPay,@load_allowance_trans_pay)

insert into tblPayrollofEmployeesDeductions values(@payrollID,@id,@empid,@late_undertime,@cfVariation,@pos_shortage,@penalties,@others,@sss_prems,@pi_prems,@ph_prems)

INSERT into tblBenefitsPaymentSum 
values(@payrollID,@id,@sss_er,@pi_er,@ph_er)
end
END
GO


-- ----------------------------
-- Procedure structure for get_payroll_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_payroll_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_payroll_data]
GO

CREATE PROCEDURE [dbo].[get_payroll_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
if @command = 0 begin
SELECT
dbo.tblPayrollofEmployees.payrollID,
dbo.tblPayrollofEmployees.employeeID,
dbo.tblEmployeesInfo.lastname + ', ' + dbo.tblEmployeesInfo.firstname + ' ' + dbo.tblEmployeesInfo.middlename as empName,
dbo.tblEmployeesInfo.[position],
dbo.tblEmployeesInfo.rate,
dbo.tblEmployeesInfo.department,
dbo.tblPayrollofEmployees.totalWorkedHours,
dbo.tblPayrollofEmployees.absent,
dbo.tblPayrollofEmployees.rhd,
dbo.tblPayrollofEmployees.nwhd,
dbo.tblPayrollofEmployees.regHolidays,
dbo.tblPayrollofEmployees.NonWorkHolidays,
dbo.tblPayrollofEmployees.overtimeHRS,
dbo.tblPayrollofEmployees.restdayReportHRS,
dbo.tblPayrollofEmployees.lateUTMins,
dbo.tblPayrollofEmployees.NSDHours,
dbo.tblPayrollofEmployeesGrossPay.basicPay,
dbo.tblPayrollofEmployeesGrossPay.rhPay,
dbo.tblPayrollofEmployeesGrossPay.nwhPay,
dbo.tblPayrollofEmployeesGrossPay.otPay,
dbo.tblPayrollofEmployeesGrossPay.rdrPay,
dbo.tblPayrollofEmployeesGrossPay.nsdPay,
dbo.tblPayrollofEmployeesGrossPay.load_allowance_transpo,
dbo.tblPayrollofEmployeesDeductions.late_undertime,
dbo.tblPayrollofEmployeesDeductions.cfVariation,
dbo.tblPayrollofEmployeesDeductions.POS_shortage,
dbo.tblPayrollofEmployeesDeductions.penalties,
dbo.tblPayrollofEmployeesDeductions.Others,
dbo.tblPayrollofEmployeesDeductions.sss_prems,
dbo.tblPayrollofEmployeesDeductions.pi_prems,
dbo.tblPayrollofEmployeesDeductions.ph_prems,
dbo.tblPayrollofEmployees.grossPay,
dbo.tblPayrollofEmployees.deduction,
dbo.tblPayrollofEmployees.netpay
FROM
dbo.tblPayrollofEmployees
INNER JOIN dbo.tblPayroll ON dbo.tblPayroll.payrollID = dbo.tblPayrollofEmployees.payrollID
INNER JOIN dbo.tblPayrollofEmployeesDeductions ON dbo.tblPayrollofEmployees.empPayrollTransNo = dbo.tblPayrollofEmployeesDeductions.empPayrollTransNo
INNER JOIN dbo.tblPayrollofEmployeesGrossPay ON dbo.tblPayrollofEmployeesDeductions.empPayrollTransNo = dbo.tblPayrollofEmployeesGrossPay.empPayrollTransNo
INNER JOIN dbo.tblEmployeesInfo ON dbo.tblEmployeesInfo.employeeID = dbo.tblPayrollofEmployees.employeeID

WHERE tblPayroll.payrollID = @SEARCHVALUE
end
if @command = 1 begin
SELECT
dbo.tblPayrollofEmployees.employeeID,
dbo.tblEmployeesInfo.lastname + ', ' + dbo.tblEmployeesInfo.firstname + ' ' + dbo.tblEmployeesInfo.middlename as empName,
dbo.tblEmployeesInfo.[position],
dbo.tblEmployeesInfo.rate,
dbo.tblEmployeesInfo.payMethod,
dbo.tblPayrollofEmployees.totalWorkedHours,
dbo.tblPayrollofEmployees.absent,
dbo.tblPayrollofEmployees.rhd,
dbo.tblPayrollofEmployees.nwhd,
dbo.tblPayrollofEmployees.regHolidays,
dbo.tblPayrollofEmployees.NonWorkHolidays,
dbo.tblPayrollofEmployees.overtimeHRS,
dbo.tblPayrollofEmployees.restdayReportHRS,
dbo.tblPayrollofEmployees.lateUTMins,
dbo.tblPayrollofEmployees.NSDHours,
dbo.tblPayrollofEmployeesGrossPay.basicPay,
dbo.tblPayrollofEmployeesGrossPay.rhPay,
dbo.tblPayrollofEmployeesGrossPay.nwhPay,
dbo.tblPayrollofEmployeesGrossPay.otPay,
dbo.tblPayrollofEmployeesGrossPay.rdrPay,
dbo.tblPayrollofEmployeesGrossPay.nsdPay,
dbo.tblPayrollofEmployeesGrossPay.load_allowance_transpo,
dbo.tblPayrollofEmployeesDeductions.late_undertime,
dbo.tblPayrollofEmployeesDeductions.cfVariation,
dbo.tblPayrollofEmployeesDeductions.POS_shortage,
dbo.tblPayrollofEmployeesDeductions.penalties,
dbo.tblPayrollofEmployeesDeductions.Others,
dbo.tblPayrollofEmployeesDeductions.sss_prems,
dbo.tblPayrollofEmployeesDeductions.pi_prems,
dbo.tblPayrollofEmployeesDeductions.ph_prems,
dbo.tblPayrollofEmployees.grossPay,
dbo.tblPayrollofEmployees.deduction,
dbo.tblPayrollofEmployees.netpay
FROM
dbo.tblPayrollofEmployees
INNER JOIN dbo.tblPayroll ON dbo.tblPayroll.payrollID = dbo.tblPayrollofEmployees.payrollID
INNER JOIN dbo.tblPayrollofEmployeesDeductions ON dbo.tblPayrollofEmployees.empPayrollTransNo = dbo.tblPayrollofEmployeesDeductions.empPayrollTransNo
INNER JOIN dbo.tblPayrollofEmployeesGrossPay ON dbo.tblPayrollofEmployeesDeductions.empPayrollTransNo = dbo.tblPayrollofEmployeesGrossPay.empPayrollTransNo
INNER JOIN dbo.tblEmployeesInfo ON dbo.tblEmployeesInfo.employeeID = dbo.tblPayrollofEmployees.employeeID


WHERE tblPayroll.payrollID = @SEARCHVALUE
end
END
GO


-- ----------------------------
-- Procedure structure for delete_payroll
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_payroll]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[delete_payroll]
GO

CREATE PROCEDURE [dbo].[delete_payroll]
@searchValue varchar(255)
AS
BEGIN
	delete tblPayroll where payrollID = @searchValue
	delete tblPayrollofEmployees where payrollID = @searchValue
	delete tblPayrollofEmployeesGrossPay where payrollID = @searchValue
	delete tblPayrollofEmployeesDeductions where payrollID = @searchValue
	delete tblBenefitsPaymentSum where payrollID = @searchValue
END
GO


-- ----------------------------
-- Procedure structure for insert_update_company
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_company]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_company]
GO

CREATE PROCEDURE [dbo].[insert_update_company]
@command varchar(255),
@companyName varchar(255),
@companyAddress varchar(255),
@companyLogo as image,
@companyHeader as image
AS
BEGIN
update tblCompany set companyName = @companyName,companyAddress = @companyAddress,companyLogo = @companyLogo,companyHeader = @companyHeader where companyID = 1
END
GO


-- ----------------------------
-- Procedure structure for get_prems_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_prems_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_prems_data]
GO

CREATE PROCEDURE [dbo].[get_prems_data]
@command varchar(255),
@searchValue varchar(255)
AS
BEGIN
SELECT
DATENAMe(month, dbo.tblPayroll.dateTo) + ' ' + cast(DATEPART(YEAR, dbo.tblPayroll.dateTo)as varchar(255)) as dateprems,
dbo.tblEmployeesInfo.employeeID as empid,
dbo.tblEmployeesInfo.department,
dbo.tblEmployeesInfo.lastname + ', ' + dbo.tblEmployeesInfo.firstname + ' ' + dbo.tblEmployeesInfo.middlename as name,
dbo.tblEmployeesInfo.rate,
dbo.tblEmployeesInfo.sssNo,
dbo.tblEmployeesInfo.piNo,
dbo.tblEmployeesInfo.phNo,
sum(dbo.tblPayrollofEmployeesDeductions.sss_prems) as sssee,
sum(dbo.tblBenefitsPaymentSum.erSSS) as ssser,
case when sum(erSSS) = 0 then
0
when sum(erSSS) < 1650 then
sum(dbo.tblBenefitsPaymentSum.erSSS)-10
when sum(erSSS) >= 1650 then
sum(dbo.tblBenefitsPaymentSum.erSSS)-30
end as totalssswoec,
case when sum(erSSS) = 0 then
0
when sum(erSSS) < 1650 then
10
when sum(erSSS) >= 1650 then
30
end as ec,
sum(dbo.tblPayrollofEmployeesDeductions.sss_prems) + sum(dbo.tblBenefitsPaymentSum.erSSS) 
as totalsss,
sum(dbo.tblPayrollofEmployeesDeductions.pi_prems) as piee,
sum(dbo.tblBenefitsPaymentSum.erPI) as pier,
sum(dbo.tblPayrollofEmployeesDeductions.pi_prems) + sum(dbo.tblBenefitsPaymentSum.erPI) as totalpi,
sum(dbo.tblPayrollofEmployeesDeductions.ph_prems) as phee,
sum(dbo.tblBenefitsPaymentSum.erPH) as pher,
sum(dbo.tblPayrollofEmployeesDeductions.ph_prems) + sum(dbo.tblBenefitsPaymentSum.erPH) as totalph,
sum(dbo.tblPayrollofEmployees.grossPay) as grosspay

FROM
dbo.tblPayrollofEmployees
INNER JOIN dbo.tblBenefitsPaymentSum ON dbo.tblPayrollofEmployees.empPayrollTransNo = dbo.tblBenefitsPaymentSum.empPayrollTransNo
INNER JOIN dbo.tblPayrollofEmployeesDeductions ON dbo.tblBenefitsPaymentSum.empPayrollTransNo = dbo.tblPayrollofEmployeesDeductions.empPayrollTransNo
INNER JOIN dbo.tblEmployeesInfo ON dbo.tblPayrollofEmployees.employeeID = dbo.tblEmployeesInfo.employeeID
INNER JOIN dbo.tblPayroll ON dbo.tblPayrollofEmployees.payrollID = dbo.tblPayroll.payrollID
where erSSS <> 0 and erpi <> 0 and erPH <> 0 and
DATENAMe(month, dbo.tblPayroll.dateTo) + ' ' + cast(DATEPART(YEAR, dbo.tblPayroll.dateTo)as varchar(255)) = @searchValue

GROUP BY
dbo.tblPayroll.dateTo,
dbo.tblEmployeesInfo.employeeID,
dbo.tblEmployeesInfo.lastname + ', ' + dbo.tblEmployeesInfo.firstname + ' ' + dbo.tblEmployeesInfo.middlename,
dbo.tblEmployeesInfo.department,
dbo.tblEmployeesInfo.rate,
dbo.tblEmployeesInfo.sssNo,
dbo.tblEmployeesInfo.piNo,
dbo.tblEmployeesInfo.phNo


END
GO


-- ----------------------------
-- Primary Key structure for table tblBenefitsPaymentSum
-- ----------------------------
ALTER TABLE [dbo].[tblBenefitsPaymentSum] ADD CONSTRAINT [PK__tblBenef__9FE512694CA06362] PRIMARY KEY CLUSTERED ([premsID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblChildrenInfo
-- ----------------------------
ALTER TABLE [dbo].[tblChildrenInfo] ADD CONSTRAINT [PK__tblChild__3213E83F07020F21] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblCompany
-- ----------------------------
ALTER TABLE [dbo].[tblCompany] ADD CONSTRAINT [PK__tblCompa__AD5459B0534D60F1] PRIMARY KEY CLUSTERED ([companyID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblDesciplinaryAction
-- ----------------------------
ALTER TABLE [dbo].[tblDesciplinaryAction] ADD CONSTRAINT [PK__tblDesci__8E560CD00EA330E9] PRIMARY KEY CLUSTERED ([descActionNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblEmployeesInfo
-- ----------------------------
ALTER TABLE [dbo].[tblEmployeesInfo] ADD CONSTRAINT [PK__tblEmplo__C134C9A17F60ED59] PRIMARY KEY CLUSTERED ([employeeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblLeave
-- ----------------------------
ALTER TABLE [dbo].[tblLeave] ADD CONSTRAINT [PK__tblLeave__CB45E81B1273C1CD] PRIMARY KEY CLUSTERED ([leaveNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblPayroll
-- ----------------------------
ALTER TABLE [dbo].[tblPayroll] ADD CONSTRAINT [PK__tblPayro__EBDFA71A03317E3D] PRIMARY KEY CLUSTERED ([payrollID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblPayrollofEmployees
-- ----------------------------
ALTER TABLE [dbo].[tblPayrollofEmployees] ADD CONSTRAINT [PK__tblPayro__AB921DDA0EA330E9] PRIMARY KEY CLUSTERED ([empPayrollTransNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblSpouseInfo
-- ----------------------------
ALTER TABLE [dbo].[tblSpouseInfo] ADD CONSTRAINT [PK__tblSpous__3213E83F03317E3D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblSystemSettings
-- ----------------------------
ALTER TABLE [dbo].[tblSystemSettings] ADD CONSTRAINT [PK__tblSyste__5C4AE16E145C0A3F] PRIMARY KEY CLUSTERED ([systemID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblUsers
-- ----------------------------
ALTER TABLE [dbo].[tblUsers] ADD CONSTRAINT [PK__tblUsers__CB9A1CDF13A7DD28] PRIMARY KEY CLUSTERED ([userID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

