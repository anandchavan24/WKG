CREATE TABLE [dbo].[Owners](
	[OwnersID] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [varchar](20) NOT NULL,
	[LastName] [varchar](200) NOT NULL,
	[FirstName] [varchar](20) NULL,
	[MiddleName] [varchar](20) NULL,
	[Status] [varchar](30) NOT NULL,
	[AllowWebAccess] [varchar](3) NULL,
	[WebAccessCode] [varchar](50) NULL,
	[WebAccessPassword] [varchar](20) NULL,
	[IsLocked] [bit] NOT NULL,
	[InvalidAttemptCount] [int] NOT NULL,
	[LockedTimeStamp] [datetime] NULL,
 	CONSTRAINT [PK_Owners] PRIMARY KEY CLUSTERED ([OwnersID] ASC) 
 	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] 
) ON [PRIMARY]
GO

INSERT INTO Owners ([Entity],[LastName],[FirstName],[MiddleName],[Status],[AllowWebAccess],[WebAccessCode],[WebAccessPassword],[IsLocked],[InvalidAttemptCount],[LockedTimeStamp]) VALUES ('OWNERS','Anand','Chavan','xyx','Active','Yes','anand.chavan@joshsoftware.com','Josh@123',1,0,null)




UPDATE [dbo].[Owners] SET [Entity] = "OWNERS";

select * from  [dbo].[Owners]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[Advisors](
	[AdvisorsID] [int] IDENTITY(1,1) NOT NULL,
	[Entity] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[FirstName] [varchar](20) NULL,
	[MiddleName] [varchar](20) NULL,
	[Salutation] [varchar](30) NULL,
	[Status] [varchar](30) NULL,
	[AllowWebAccess] [varchar](3) NULL,
	[WebAccessCode] [varchar](50) NULL,
	[WebAccessPassword] [varchar](20) NULL,
	[IsLocked] [bit] NOT NULL,
	[InvalidAttemptCount] [int] NOT NULL,
	[LockedTimeStamp] [datetime] NULL,
 CONSTRAINT [PK_Advisors] PRIMARY KEY CLUSTERED 
(
	[AdvisorsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO Advisors ([Entity],[LastName],[FirstName],[MiddleName],[Status],[AllowWebAccess],[WebAccessCode],[WebAccessPassword],[IsLocked],[InvalidAttemptCount],[LockedTimeStamp]) VALUES ('1','x','y','z','Active','Yes','sds@gmail.com','Josh@123',1,0,null)

UPDATE Advisors SET IsLocked = 0;

select * from  [dbo].[Advisors];

CREATE TABLE [dbo].[ClientPortal_OTPLog](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Email_Mobile] [varchar](50) NOT NULL,
    [OTP] [varchar](6) NOT NULL,
    [CreatedAt] [datetime] NOT NULL
) ON [PRIMARY]
GO

select * from ClientPortal_OTPLog;

TRUNCATE TABLE	ClientPortal_OTPLog


