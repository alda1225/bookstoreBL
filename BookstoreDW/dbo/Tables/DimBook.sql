CREATE TABLE [dbo].[DimBook](
	[BookKey] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[Title] [varchar](400) NULL,
	[ISBN13] [varchar](13) NULL,
	[LanguageCode] [varchar](8) NULL,
	[LanguageName] [varchar](50) NULL,
	[NumPages] [int] NULL,
	[PublicationDate] [date] NULL,
	[PublisherName] [varchar](400) NULL,
	[Authors] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]