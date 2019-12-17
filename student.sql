/*
 Navicat Premium Data Transfer

 Source Server         : DFCPSGENERALDB
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : localhost:1433
 Source Catalog        : school_mgm_db
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 17/12/2019 16:34:55
*/


-- ----------------------------
-- Table structure for tblCharges
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCharges]') AND type IN ('U'))
	DROP TABLE [dbo].[tblCharges]
GO

CREATE TABLE [dbo].[tblCharges] (
  [chargeID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [syID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [particulars] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [amount] decimal(20,2)  NULL,
  [termsID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [accNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblCharges] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblDue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDue]') AND type IN ('U'))
	DROP TABLE [dbo].[tblDue]
GO

CREATE TABLE [dbo].[tblDue] (
  [dueID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [chargeID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [amount] decimal(20,2)  NULL,
  [dueDate] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[tblDue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblEnrolledStudent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEnrolledStudent]') AND type IN ('U'))
	DROP TABLE [dbo].[tblEnrolledStudent]
GO

CREATE TABLE [dbo].[tblEnrolledStudent] (
  [ID] int  NOT NULL,
  [syID] int  NULL,
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [studentID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remarks] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblEnrolledStudent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblPaymentTransaction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPaymentTransaction]') AND type IN ('U'))
	DROP TABLE [dbo].[tblPaymentTransaction]
GO

CREATE TABLE [dbo].[tblPaymentTransaction] (
  [PTRNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [dateTr] datetime2(7)  NULL,
  [chargeID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [studentID] int  NULL,
  [amount] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remarks] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [casherUserID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblPaymentTransaction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblSchoolYear
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSchoolYear]') AND type IN ('U'))
	DROP TABLE [dbo].[tblSchoolYear]
GO

CREATE TABLE [dbo].[tblSchoolYear] (
  [syID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [yfrom] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [yto] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [principalName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblSchoolYear] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblSchoolYear
-- ----------------------------
INSERT INTO [dbo].[tblSchoolYear] VALUES (N'SY-00001', N'2019', N'2020', N'Rodmar Dumago', N'Active')
GO


-- ----------------------------
-- Table structure for tblSection
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSection]') AND type IN ('U'))
	DROP TABLE [dbo].[tblSection]
GO

CREATE TABLE [dbo].[tblSection] (
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [sectionName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sectionGrade] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maxStudCount] int  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [syID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblSection] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblSection
-- ----------------------------
INSERT INTO [dbo].[tblSection] VALUES (N'SEC-00001', N'APPLE', N'I', N'50', N'', N'2019 - 2020')
GO


-- ----------------------------
-- Table structure for tblStudentInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStudentInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblStudentInfo]
GO

CREATE TABLE [dbo].[tblStudentInfo] (
  [studentID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [pictureID] varbinary(max)  NULL,
  [lastname] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [firstname] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [address] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gender] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birthDate] datetime2(7)  NULL,
  [birthPlace] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maidenName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maidenCN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fatherName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fatherCN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [emergencyName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [emergencyCN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblStudentInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblStudentInfo
-- ----------------------------
INSERT INTO [dbo].[tblStudentInfo] VALUES (N'ID-00001', NULL, N'dumago', N'rodmar', N'a', N'greemville', N'Male', N'2019-12-17 00:00:00.0000000', N'asdasd', N'', N'', N'', N'', N'', N'', N'Active')
GO


-- ----------------------------
-- Table structure for tblTeacherInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTeacherInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[tblTeacherInfo]
GO

CREATE TABLE [dbo].[tblTeacherInfo] (
  [teacherID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [pictureID] varbinary(max)  NULL,
  [lastname] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [firstname] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MI] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [address] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gender] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [birthDate] datetime2(7)  NULL,
  [birthPlace] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [maidenName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [fatherName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [emergencyName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [emergencyCN] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblTeacherInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for tblUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type IN ('U'))
	DROP TABLE [dbo].[tblUser]
GO

CREATE TABLE [dbo].[tblUser] (
  [userID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [userName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[tblUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblUser
-- ----------------------------
INSERT INTO [dbo].[tblUser] VALUES (N'USR-00001', N'admin', N'1234', N'Admin', N'Active')
GO


-- ----------------------------
-- Table structure for TMPtblCharges
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TMPtblCharges]') AND type IN ('U'))
	DROP TABLE [dbo].[TMPtblCharges]
GO

CREATE TABLE [dbo].[TMPtblCharges] (
  [chargeID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [syID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [particulars] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [amount] decimal(20,2)  NULL,
  [termsID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [accNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TMPtblCharges] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TMPtblDue
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TMPtblDue]') AND type IN ('U'))
	DROP TABLE [dbo].[TMPtblDue]
GO

CREATE TABLE [dbo].[TMPtblDue] (
  [dueID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [chargeID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [amount] decimal(20,2)  NULL,
  [dueDate] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[TMPtblDue] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TMPtblEnrolledStudent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TMPtblEnrolledStudent]') AND type IN ('U'))
	DROP TABLE [dbo].[TMPtblEnrolledStudent]
GO

CREATE TABLE [dbo].[TMPtblEnrolledStudent] (
  [ID] int  NOT NULL,
  [syID] int  NULL,
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [studentID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [remarks] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TMPtblEnrolledStudent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TMPtblSchedule
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TMPtblSchedule]') AND type IN ('U'))
	DROP TABLE [dbo].[TMPtblSchedule]
GO

CREATE TABLE [dbo].[TMPtblSchedule] (
  [schedID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [syID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sectionNo] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [hours] datetime2(7)  NULL,
  [dateFrom] datetime2(7)  NULL,
  [dateTo] datetime2(7)  NULL,
  [description] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [teacherID] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[TMPtblSchedule] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for insert_update_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_user]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_user]
GO

CREATE PROCEDURE [dbo].[insert_update_user]
@command int,
@userID varchar(255),
@username varchar(255),
@password varchar(255),
@role varchar(255),
@status varchar(255)
AS
BEGIN
	if @command = 0 begin
	insert into tblUser values(@userid,@username,@password,@role,@status)
	end
	else if @command = 1 begin
	update tblUser set username = @username, password = @password, role = @role, status = @status
	where userid = @userid
	end
END
GO


-- ----------------------------
-- Procedure structure for get_user_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_user_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_user_data]
GO

CREATE PROCEDURE [dbo].[get_user_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
	if @command = 0 begin
	select * from tbluser where userid like '%'+ @searchValue + '%' or username  like '%'+ @searchValue + '%' 
	end
	else if @command = 1 begin
	select userid,username,password,role,status from tbluser where username = @searchValue
	end
END
GO


-- ----------------------------
-- Procedure structure for insert_update_section
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_section]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_section]
GO

CREATE PROCEDURE [dbo].[insert_update_section]
@command int,
@sectionNo varchar(255),
@name varchar(255),
@grade varchar(255),
@maxLimit varchar(255),
@status varchar(255),
@syID varchar(255)
AS
BEGIN
	if @command = 0 begin
	insert into tblsection values(@sectionNo,@name,@grade,@maxlimit,@status,@syID)
	end
	else if @command = 1 begin
	update tblsection set sectionname = @name, sectionGrade = @grade, maxStudCount = @maxlimit, status = @status, syID = @syID
	where sectionNo = @sectionNo
	end
END
GO


-- ----------------------------
-- Procedure structure for get_section_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_section_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_section_data]
GO

CREATE PROCEDURE [dbo].[get_section_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
	if @command = 0 begin
	SELECT
dbo.tblSection.sectionNo,
dbo.tblSection.sectionName,
dbo.tblSection.sectionGrade,
dbo.tblSection.maxStudCount,
count(studentID) as Student_Count
FROM
dbo.tblEnrolledStudent
RIGHT JOIN dbo.tblSection ON dbo.tblSection.sectionNo = dbo.tblEnrolledStudent.sectionNo AND dbo.tblSection.syID = dbo.tblEnrolledStudent.syID

where tblSection.sectionno like '%'+ @searchValue + '%' or tblSection.sectionname  like '%'+ @searchValue + '%' 
group by
dbo.tblSection.sectionNo,
dbo.tblSection.sectionName,
dbo.tblSection.sectionGrade,
dbo.tblSection.maxStudCount
	end
	else if @command = 1 begin
	select sectionno,sectionname,sectiongrade,maxStudCount,status,syID from tblsection where sectionNo = @searchValue
	end
END
GO


-- ----------------------------
-- Procedure structure for insert_update_SY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_SY]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_SY]
GO

CREATE PROCEDURE [dbo].[insert_update_SY]
@command int,
@syID varchar(255),
@yfrom varchar(255),
@yTo varchar(255),
@principal varchar(255),
@status varchar(255)
AS
BEGIN
	if @command = 0 begin
	insert into tblSchoolYear values(@syID,@yfrom,@yTo,@principal,@status)
	end
	else if @command = 1 begin
	update tblSchoolYear set yfrom = @yfrom, yto = @yto, principalName = @principal, status = @status, syID = @syID
	where syID = @syID
	end
END
GO


-- ----------------------------
-- Procedure structure for get_SY_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_SY_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_SY_data]
GO

CREATE PROCEDURE [dbo].[get_SY_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
	if @command = 0 begin
	select * from tblSchoolYear where syID like '%'+ @searchValue + '%' 
	end
END
GO


-- ----------------------------
-- Procedure structure for insert_update_student
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_student]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_student]
GO

CREATE PROCEDURE [dbo].[insert_update_student]
@command int,
@studentID varchar(255),
@pictureID varbinary(max),
@ln varchar(255),
@fn varchar(255),
@mi varchar(255),
@address varchar(255),
@gender varchar(255),
@bd datetime2,
@bdPlace varchar(255),
@mName varchar(255),
@mCN varchar(255),
@fName varchar(255),
@fCN varchar(255),
@eName varchar(255),
@eCN varchar(255),
@status varchar(255)
AS
BEGIN
	if @command = 0 begin
	insert into tblStudentInfo values(@studentID,null,@ln,@fn,@mi,@address,@gender,@bd,@bdplace,@mname,@mcn,@fname,@fcn,@ename,@ecn,@status)
	end
	else if @command = 1 begin
	update tblStudentInfo set pictureID = null, lastname = @ln, firstname = @fn, mi = @mi, address = @address, gender = @gender, birthDate = @bd, birthPlace = @bdplace, maidenname = @mname, maidenCN = @mcn,fatherName = @fName,fatherCN = @fcn,emergencyName = @eName,emergencyCn = @ecn,status = @status where studentID = @studentID
	end
END
GO


-- ----------------------------
-- Procedure structure for insert_update_teacher
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[insert_update_teacher]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[insert_update_teacher]
GO

CREATE PROCEDURE [dbo].[insert_update_teacher]
@command int,
@teacherID varchar(255),
@pictureID varbinary(max),
@ln varchar(255),
@fn varchar(255),
@mi varchar(255),
@address varchar(255),
@gender varchar(255),
@bd datetime2,
@bdPlace varchar(255),
@cn varchar(255),
@mName varchar(255),
@mCN varchar(255),
@fName varchar(255),
@fCN varchar(255),
@eName varchar(255),
@eCN varchar(255),
@status varchar(255)
AS
BEGIN
	if @command = 0 begin
	insert into tblTeacherInfo values(@teacherID,null,@ln,@fn,@mi,@address,@gender,@bd,@bdplace,@cn,@mname,@fname,@ename,@ecn,@status)
	end
	else if @command = 1 begin
	update tblTeacherInfo set pictureID = null, lastname = @ln, firstname = @fn, mi = @mi, address = @address, gender = @gender, birthDate = @bd, birthPlace = @bdplace,cn = @cn ,maidenname = @mname,fatherName = @fName,emergencyName = @eName,emergencyCn = @ecn,status = @status where teacherID = @teacherID
	end
END
GO


-- ----------------------------
-- Procedure structure for get_student_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_student_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_student_data]
GO

CREATE PROCEDURE [dbo].[get_student_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
	if @command = 0 begin
	select * from tblStudentInfo where studentID like '%'+ @searchValue + '%' or lastname  like '%'+ @searchValue + '%' or firstname  like '%'+ @searchValue + '%' 
	end
	else if @command = 1 begin
	select * from tblStudentInfo where studentID = @searchValue
	end
	
	/** for buildSection **/
	else if @command = 2 BEGIN
	select * from tblEnrolledStudent where sectionNo = @searchValue
	end
END
GO


-- ----------------------------
-- Procedure structure for get_teacher_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[get_teacher_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[get_teacher_data]
GO

CREATE PROCEDURE [dbo].[get_teacher_data]
@command int,
@searchValue varchar(255)
AS
BEGIN
	if @command = 0 begin
	select * from tblTeacherInfo where teacherID like '%'+ @searchValue + '%' or lastname  like '%'+ @searchValue + '%' or firstname  like '%'+ @searchValue + '%' 
	end
	else if @command = 1 begin
	select * from tblTeacherInfo where teacherID = @searchValue
	end
END
GO


-- ----------------------------
-- Primary Key structure for table tblCharges
-- ----------------------------
ALTER TABLE [dbo].[tblCharges] ADD CONSTRAINT [PK__tblCharg__F71EF993286302EC] PRIMARY KEY CLUSTERED ([chargeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblDue
-- ----------------------------
ALTER TABLE [dbo].[tblDue] ADD CONSTRAINT [PK__tblDue__843C6A2D25869641] PRIMARY KEY CLUSTERED ([dueID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblEnrolledStudent
-- ----------------------------
ALTER TABLE [dbo].[tblEnrolledStudent] ADD CONSTRAINT [PK__tblEnrol__3214EC27108B795B] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblSchoolYear
-- ----------------------------
ALTER TABLE [dbo].[tblSchoolYear] ADD CONSTRAINT [PK__tblSchoo__33E204D00DAF0CB0] PRIMARY KEY CLUSTERED ([syID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblSection
-- ----------------------------
ALTER TABLE [dbo].[tblSection] ADD CONSTRAINT [PK__tblSecti__3F4700B508EA5793] PRIMARY KEY CLUSTERED ([sectionNo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblStudentInfo
-- ----------------------------
ALTER TABLE [dbo].[tblStudentInfo] ADD CONSTRAINT [PK__tblStude__4D11D65C1367E606] PRIMARY KEY CLUSTERED ([studentID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblTeacherInfo
-- ----------------------------
ALTER TABLE [dbo].[tblTeacherInfo] ADD CONSTRAINT [PK__tblTeach__EC09336A182C9B23] PRIMARY KEY CLUSTERED ([teacherID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table tblUser
-- ----------------------------
ALTER TABLE [dbo].[tblUser] ADD CONSTRAINT [PK__tblUser__CB9A1CDF023D5A04] PRIMARY KEY CLUSTERED ([userID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TMPtblCharges
-- ----------------------------
ALTER TABLE [dbo].[TMPtblCharges] ADD CONSTRAINT [PK__tblCharg__F71EF993286302EC_copy1] PRIMARY KEY CLUSTERED ([chargeID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TMPtblDue
-- ----------------------------
ALTER TABLE [dbo].[TMPtblDue] ADD CONSTRAINT [PK__tblDue__843C6A2D25869641_copy1] PRIMARY KEY CLUSTERED ([dueID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TMPtblEnrolledStudent
-- ----------------------------
ALTER TABLE [dbo].[TMPtblEnrolledStudent] ADD CONSTRAINT [PK__tblEnrol__3214EC27108B795B_copy1] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

