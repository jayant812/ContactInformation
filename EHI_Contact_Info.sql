USE [EHI_Contact_Info]
GO
ALTER TABLE [dbo].[EmpContactInfo] DROP CONSTRAINT [DF_EmpContactInfo_status]
GO
/****** Object:  Table [dbo].[EmpContactInfo]    Script Date: 13-12-2021 17:19:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmpContactInfo]') AND type in (N'U'))
DROP TABLE [dbo].[EmpContactInfo]
GO
/****** Object:  Table [dbo].[EmpContactInfo]    Script Date: 13-12-2021 17:19:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpContactInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[phoneNumber] [varchar](10) NULL,
	[status] [char](8) NOT NULL,
 CONSTRAINT [PK_EmpContactInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmpContactInfo] ON 

INSERT [dbo].[EmpContactInfo] ([Id], [firstName], [lastName], [email], [phoneNumber], [status]) VALUES (1, N'Jayant', N'Patil', N'Jayantpatil812@yahoo.co.in', N'3333333333', N'Active  ')
SET IDENTITY_INSERT [dbo].[EmpContactInfo] OFF
GO
ALTER TABLE [dbo].[EmpContactInfo] ADD  CONSTRAINT [DF_EmpContactInfo_status]  DEFAULT ('Active') FOR [status]
GO
