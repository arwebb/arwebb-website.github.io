/****** Object:  Table [dbo].[campus]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campus](
	[id] [nvarchar](9) NOT NULL,
	[email_address] [nvarchar](200) NULL,
	[phone_number] [nvarchar](10) NULL,
	[principal_name] [nvarchar](200) NULL,
	[campus_type] [nvarchar](100) NULL,
	[website] [nvarchar](100) NULL,
	[S_STREET_ADDR] [nvarchar](200) NULL,
	[S_CITY] [nvarchar](100) NULL,
	[S_STATE] [nchar](2) NULL,
	[S_ZIP5] [nchar](5) NULL,
	[S_ZIP4] [nchar](4) NULL,
  [S_LATITUDE] [nvarchar](10) NULL,
  [S_LONGITUDE] [nvarchar](10) NULL,
	[S_SITE_STREET_ADDR] [nvarchar](200) NULL,
	[S_SITE_CITY] [nvarchar](100) NULL,
	[S_SITE_STATE] [nchar](2) NULL,
	[S_SITE_ZIP5] [nchar](5) NULL,
	[S_SITE_ZIP4] [nchar](4) NULL,
  [S_SITE_LATITUDE] [nvarchar](10) NULL,
  [S_SITE_LONGITUDE] [nvarchar](10) NULL,
	[alt_standards] [bit] NULL,
	[county_id] [nvarchar](9) NULL,
	[district_id] [nvarchar](9) NOT NULL,
  [region_id] [nvarchar](9) NOT NULL,
  [state_id] [nvarchar](9) NOT NULL,
	[paired_id] [nvarchar](9) NULL,
 CONSTRAINT [campus_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[campus_grades]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campus_grades](
	[campus_id] [nvarchar](9) NOT NULL,
	[grade_id] [int] NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [campus_grades_pk] PRIMARY KEY CLUSTERED 
(
	[campus_id] ASC,
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[campus_translation]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campus_translation](
	[non_translated_id] [nvarchar](9) NOT NULL,
	[language_id] [int] NOT NULL,
 CONSTRAINT [campus_translation_pk] PRIMARY KEY CLUSTERED 
(
	[non_translated_id] ASC,
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[county]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[county](
	[id] [nvarchar](9) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [county_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[datapoint]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datapoint](
	[id] [int] NOT NULL,
	[year] [nvarchar](4) NOT NULL,
	[value] [nvarchar](100) NULL,
	[n_size] [nvarchar](7) NULL,
	[precision] [nvarchar](2) NULL,
	[scored] [bit] NULL,
	[exception_code] [nvarchar](100) NULL,
	[entity_id] [nvarchar](9) NOT NULL,
	[framework_id] [nvarchar](100) NULL,
	[domain_id] [nvarchar](100) NULL,
	[metric_id] [nvarchar](100) NULL,
	[disagg_subject_id] [nvarchar](100) NULL,
	[disagg_subgroup_id] [nvarchar](100) NULL,
 CONSTRAINT [datapoint_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[datapoint_translation]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datapoint_translation](
	[non_translated_id] [int] NOT NULL,
	[language_id] [int] NOT NULL,
	[exception_description] [nvarchar](500) NULL,
	[display_text] [nvarchar](200) NULL,
 CONSTRAINT [datapoint_translation_pk] PRIMARY KEY CLUSTERED 
(
	[non_translated_id] ASC,
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[district]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[id] [nvarchar](9) NOT NULL,
	[email_address] [nvarchar](200) NULL,
	[phone_number] [nvarchar](10) NULL,
	[superintendent_name] [nvarchar](200) NULL,
	[website] [nvarchar](100) NULL,
	[D_STREET_ADDR] [nvarchar](200) NULL,
	[D_CITY] [nvarchar](100) NULL,
	[D_STATE] [nchar](2) NULL,
	[D_ZIP5] [nchar](5) NULL,
	[D_ZIP4] [nchar](4) NULL,
  [D_LATITUDE] [nvarchar](10) NULL,
  [D_LONGITUDE] [nvarchar](10) NULL,
	[D_SITE_STREET_ADDR] [nvarchar](200) NULL,
	[D_SITE_CITY] [nvarchar](100) NULL,
	[D_SITE_STATE] [nchar](2) NULL,
	[D_SITE_ZIP5] [nchar](5) NULL,
	[D_SITE_ZIP4] [nchar](4) NULL,
  [D_SITE_LATITUDE] [nvarchar](10) NULL,
  [D_SITE_LONGITUDE] [nvarchar](10) NULL,
	[alt_standards] [bit] NULL,
	[single_campus_district] [bit] NULL,
	[charter_district] [bit] NULL,
	[county_id] [nvarchar](9) NULL,
	[region_id] [nvarchar](9) NOT NULL,
  [state_id] [nvarchar](9) NOT NULL,
 CONSTRAINT [district_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entity]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entity](
	[id] [nvarchar](9) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [entity_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[entity_modal_content]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entity_modal_content](
	[entity_id] [nvarchar](9) NOT NULL,
	[modal_content_id] [int] NOT NULL,
	[modal_id] [nvarchar](100) NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [entity_modal_content_pk] PRIMARY KEY CLUSTERED 
(
	[entity_id] ASC,
	[modal_content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[grade]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grade](
	[id] [int] NOT NULL,
 CONSTRAINT [grade_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[grade_translation]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grade_translation](
	[non_translated_id] [int] NOT NULL,
	[language_id] [int] NOT NULL,
	[short_name] [nvarchar](2) NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [grade_translation_pk] PRIMARY KEY CLUSTERED 
(
	[non_translated_id] ASC,
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[language]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[short_name] [nvarchar](2) NOT NULL,
 CONSTRAINT [language_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[modal_content]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modal_content] (
    [id] [int]  NOT NULL,
    CONSTRAINT [modal_content_pk] PRIMARY KEY  ([id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modal_content_translation]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modal_content_translation] (
    [non_translated_id] [int]  NOT NULL,
    [language_id] [int]  NOT NULL,
	[title] [nvarchar](100) NULL,
	[value] [nvarchar](MAX) NULL,
    CONSTRAINT [modal_content_translation_pk] PRIMARY KEY CLUSTERED  ([non_translated_id] ASC,[language_id] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region](
	[id] [nvarchar](9) NOT NULL,
	[state_id] [nvarchar](9) NOT NULL,
 CONSTRAINT [id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[state]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[id] [nvarchar](9) NOT NULL,
	[short_name] [nvarchar](2) NOT NULL,
 CONSTRAINT [state_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DISTRICT18]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DISTRICT18](
	[D_ID] [int] NOT NULL,
	[D_NAME] [nvarchar](50) NOT NULL,
	[D_NUM_NAME] [nvarchar](10) NOT NULL,
	[D_STREET_ADDR] [nvarchar](40) NOT NULL,
	[D_CITY] [nvarchar](30) NOT NULL,
	[D_STATE] [nchar](2) NOT NULL,
	[D_ZIP5] [nchar](5) NOT NULL,
	[D_ZIP4] [nchar](4) NOT NULL,
	[D_SITE_STREET_ADDR] [nvarchar](40) NOT NULL,
	[D_SITE_CITY] [nvarchar](30) NOT NULL,
	[D_SITE_STATE] [nchar](2) NOT NULL,
	[D_SITE_ZIP5] [nchar](5) NOT NULL,
	[D_SITE_ZIP4] [nchar](4) NOT NULL,
	[D_AREA_CODE] [nchar](3) NOT NULL,
	[D_PHONE_NUM] [nvarchar](25) NOT NULL,
	[D_PHONE_EXT] [nchar](4) NOT NULL,
	[D_FAX_AREA_CODE] [nchar](3) NOT NULL,
	[D_FAX_PHONE_NUM] [nvarchar](25) NOT NULL,
	[D_FAX_PHONE_EXT] [nchar](4) NOT NULL,
	[D_INTERNET_ADDR] [nvarchar](100) NOT NULL,
	[D_WEB_PAGE_ADDR] [nvarchar](100) NOT NULL,
	[D_PUBLIC_STATUS] [nchar](1) NOT NULL,
	[D_SUBTYPE] [smallint] NOT NULL,
	[D_SUBTYPE_DESC] [nvarchar](30) NOT NULL,
	[D_ENROLL_COUNT] [int] NOT NULL,
	[D_NCES_ID] [nvarchar](20) NOT NULL,
	[D_ORG_STATUS_DTTM] [datetime] NOT NULL,
	[D_ACTIVE_DTTM] [datetime] NOT NULL,
	[D_INACTIVE_DTTM] [datetime] NOT NULL,
	[D_UPDATE_DTTM] [datetime] NOT NULL,
	[D_UPDATE_USER] [nchar](8) NOT NULL,
 CONSTRAINT [PK_DISTRICT_18] PRIMARY KEY NONCLUSTERED 
(
	[D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SCHOOL18]    Script Date: 5/11/2018 1:13:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SCHOOL18](
	[S_ID] [int] NOT NULL,
	[S_NAME] [nvarchar](50) NOT NULL,
	[S_NUM_NAME] [nvarchar](10) NOT NULL,
	[S_STREET_ADDR] [nvarchar](40) NOT NULL,
	[S_CITY] [nvarchar](30) NOT NULL,
	[S_STATE] [nchar](2) NOT NULL,
	[S_ZIP5] [nchar](5) NOT NULL,
	[S_ZIP4] [nchar](4) NOT NULL,
	[S_SITE_STREET_ADDR] [nvarchar](40) NOT NULL,
	[S_SITE_CITY] [nvarchar](30) NOT NULL,
	[S_SITE_STATE] [nchar](2) NOT NULL,
	[S_SITE_ZIP5] [nchar](5) NOT NULL,
	[S_SITE_ZIP4] [nchar](4) NOT NULL,
	[S_AREA_CODE] [nchar](3) NOT NULL,
	[S_PHONE_NUM] [nvarchar](25) NOT NULL,
	[S_PHONE_EXT] [nchar](4) NOT NULL,
	[S_FAX_AREA_CODE] [nchar](3) NOT NULL,
	[S_FAX_PHONE_NUM] [nvarchar](25) NOT NULL,
	[S_FAX_PHONE_EXT] [nchar](4) NOT NULL,
	[S_INTERNET_ADDR] [nvarchar](100) NOT NULL,
	[S_WEB_PAGE_ADDR] [nvarchar](100) NOT NULL,
	[S_PUBLIC_STATUS] [nchar](1) NOT NULL,
	[S_SUBTYPE] [smallint] NOT NULL,
	[S_SUBTYPE_DESC] [nvarchar](30) NOT NULL,
	[S_ENROLL_COUNT] [int] NOT NULL,
	[S_ORG_STATUS] [smallint] NOT NULL,
	[S_ORG_STATUS_DTTM] [datetime] NOT NULL,
	[S_GRADEGRP] [smallint] NOT NULL,
	[S_GRADEGRP_DESC] [nvarchar](30) NOT NULL,
	[S_CHARTER] [nchar](1) NOT NULL,
	[S_CHARTER_DESC] [nvarchar](30) NOT NULL,
	[S_MAGNET_SCHOOL] [nchar](1) NOT NULL,
	[S_MAGNET_SCHOOL_DATE] [datetime] NOT NULL,
	[S_TEC_RES_FACILITY] [nchar](1) NOT NULL,
	[S_TEC_RES_FACILITY_DATE] [datetime] NOT NULL,
	[S_REG_ALT_ACCNT_YEAR] [nchar](4) NOT NULL,
	[S_HIGH_SCHOOL_CEEB_CODE] [nvarchar](6) NOT NULL,
	[D_PUBLIC_STATUS] [nchar](1) NOT NULL,
	[S_NCES_ID] [nvarchar](20) NOT NULL,
	[S_ACTIVE_DTTM] [datetime] NOT NULL,
	[S_INACTIVE_DTTM] [datetime] NOT NULL,
	[S_UPDATE_DTTM] [datetime] NOT NULL,
	[S_UPDATE_USER] [nchar](8) NOT NULL,
 CONSTRAINT [PK_SCHOOL18] PRIMARY KEY NONCLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
