 
USE [FileContent]
GO
/****** Object:  Table [dbo].[FM_DetailContent]    Script Date: 05/30/2015 15:08:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FM_DetailContent]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FM_DetailContent](
	[ID] [uniqueidentifier] NOT NULL,
	[File_ID] [int] NULL,
	[File_VerID] [int] NULL,
	[File_Ver] [varchar](100) NULL,
	[File_Content] [varbinary](max) NULL,
	[Add_Time] [datetime] NULL,
 CONSTRAINT [PK_File_DetailContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_FM_DetailContent_Add_Time]    Script Date: 05/30/2015 15:08:22 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_FM_DetailContent_Add_Time]') AND parent_object_id = OBJECT_ID(N'[dbo].[FM_DetailContent]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_FM_DetailContent_Add_Time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FM_DetailContent] ADD  CONSTRAINT [DF_FM_DetailContent_Add_Time]  DEFAULT (getdate()) FOR [Add_Time]
END


End
GO
