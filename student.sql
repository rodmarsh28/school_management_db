/*
 Navicat Premium Data Transfer

 Source Server         : MYPROJ
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : localhost:1433
 Source Catalog        : SCHOOL_MANAGEMENT_DB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 11/07/2019 19:12:40
*/


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
INSERT INTO [dbo].[tblSchoolYear]  VALUES (N'SY-00001', N'2019', N'2020', N'Rodmar Dumago', N'Active')
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
INSERT INTO [dbo].[tblUser]  VALUES (N'USR-00001', N'admin', N'1234', N'Admin', N'Active')
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
	select * from tblsection where sectionno like '%'+ @searchValue + '%' or sectionname  like '%'+ @searchValue + '%' 
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

