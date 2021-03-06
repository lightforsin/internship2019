USE [cinema]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 8/28/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK__booking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 8/28/2019 11:04:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Actors] [varchar](max) NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Year] [int] NOT NULL,
	[Src] [varchar](50) NOT NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieSchedule]    Script Date: 8/28/2019 11:04:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NULL,
 CONSTRAINT [PK__movieschedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 8/28/2019 11:04:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[MovieId] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeatNumber] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__seat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/28/2019 11:04:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK__user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (42, 4, 1, CAST(N'2019-07-01T14:45:00.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (43, 1, 4, CAST(N'2019-08-14T08:42:25.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (44, 3, 4, CAST(N'2019-08-15T09:14:53.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (45, 3, 4, CAST(N'2019-08-15T10:20:05.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (46, 3, 4, CAST(N'2019-08-15T22:15:36.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (47, 1, 4, CAST(N'2019-08-14T17:23:17.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (48, 1, 4, CAST(N'2019-08-15T16:46:25.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (49, 1, 4, CAST(N'2019-08-14T19:25:45.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (50, 1, 3, CAST(N'2019-08-28T21:03:08.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (51, 2, 3, CAST(N'2019-08-28T17:35:44.000' AS DateTime))
INSERT [dbo].[Booking] ([ID], [MovieId], [UserId], [Date]) VALUES (52, 3, 3, CAST(N'2019-08-28T22:13:09.087' AS DateTime))
SET IDENTITY_INSERT [dbo].[Booking] OFF
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (1, N'Beauty and the beast', N'A selfish prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', N'Emma Watson, Dan Stevens', N'room 1', 2017, N'1f759f3c0869ef9f52beb75ee5f41db7.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (2, N'Fast Color', N'A woman is forced to go on the run when her superhuman abilities are discovered. Years after having abandoned her family, the only place she has left to hide is home.', N'Lorraine Toussaint, Gugu Mbatha-Raw, Christopher Denham', N'room 2', 2019, N'FastColor.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (3, N'The Lion King', N'After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', N'Donald Glover, Beyoncé', N'room 1', 2019, N'TheLionKing.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (4, N'Dora and The Lost City of Gold', N'Dora, a teenage explorer, leads her friends on an adventure to save her parents and solve the mystery behind a lost city of gold.', N'Isabela Moner, Eugenio Derbez', N'room 1', 2019, N'Dora.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (5, N'Alita: Battle Angel', N'A deactivated cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.', N'Rosa Salazar, Jennifer Connelly', N'room 3', 2019, N'Alita.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (6, N'The LightHouse', N'The story of two lighthouse keepers on a remote and mysterious New England island in the 1890s.', N'Robert Pattinson, Valeriia Karaman', N'room 2', 2019, N'TheLightHouse.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (7, N'Bohemian Rhapsody', N'The story of the legendary rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).', N'Rami Malek, Lucy Boynton', N'room 2', 2018, N'BohemianRhapsody.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (8, N'Don''t Let Go', N'After a man''s family dies in what appears to be a murder, he gets a phone call from one of the dead, his niece. He''s not sure if she''s a ghost or if he''s going mad, but as it turns out, he''s not', N'Byron Mann, Storm Reid, Mykelti Williamson ', N'room 1', 2019, N'DontLetGo.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (9, N'Saaho', N'The Story is about a power battle which is taking place in the higher echelons of power unrelated and unconnected episodes occurring in different parts of the globe, Intertwine in an unforeseen manner to a revelation of mind games.', N' Prabhas, Shraddha Kapoor, Mandira Bedi', N'room 3', 2019, N'saaho.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (10, N'Before You Know It', N'A pair of sisters find out that the mother they thought was dead is alive and starring on a soap opera.', N' Linda Arroz, Alec Baldwin, Ben Becher', N'room 2', 2019, N'beforeyouknowit.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (11, N'Overcomer', N'A high-school basketball coach volunteers to coach a troubled teen in long-distance running.', N'Alex Kendrick, Shari Rigby, Aryn Wright-Thompson', N'room 4', 2019, N'overcomer.jpg')
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[MovieSchedule] ON 

INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (1, 1, CAST(N'2019-08-29' AS Date), CAST(N'14:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (2, 1, CAST(N'2019-08-30' AS Date), CAST(N'14:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (3, 2, CAST(N'2019-08-30' AS Date), CAST(N'10:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (5, 3, CAST(N'2019-08-29' AS Date), CAST(N'18:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (6, 3, CAST(N'2019-08-30' AS Date), CAST(N'14:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (7, 9, CAST(N'2019-08-30' AS Date), CAST(N'15:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (8, 8, CAST(N'2019-08-29' AS Date), CAST(N'12:15:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (9, 10, CAST(N'2019-08-29' AS Date), CAST(N'17:30:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (10, 9, CAST(N'2019-08-31' AS Date), CAST(N'13:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (11, 10, CAST(N'2019-08-31' AS Date), CAST(N'16:00:00' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (12, 11, CAST(N'2019-08-28' AS Date), CAST(N'18:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[MovieSchedule] OFF
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 1, 12, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 2, 13, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 3, 43, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 4, 44, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 5, 45, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 6, 77, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 7, 78, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 8, 79, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 9, 80, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 10, 63, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 11, 64, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 12, 42, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 13, 34, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 14, 23, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 15, 27, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 16, 61, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 17, 51, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 18, 1, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 19, 2, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 20, 36, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 21, 37, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 22, 2, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 23, 13, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 24, 14, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 25, 14, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 26, 15, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 27, 28, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (1, 28, 29, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (2, 29, 100, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (2, 30, 99, CAST(N'2019-08-14' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 31, 71, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 32, 72, CAST(N'2019-08-15' AS Date))
INSERT [dbo].[Seat] ([MovieId], [ID], [SeatNumber], [Date]) VALUES (3, 33, 73, CAST(N'2019-08-15' AS Date))
SET IDENTITY_INSERT [dbo].[Seat] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (1, N'user 1 edit', N'test1@test1.ro', N'test1', 0)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (2, N'testez put', N'test2@test2.ro', N'test2', 0)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (3, N'admin', N'admin@yahoo.com', N'admin', 1)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (4, N'test', N'test@test.com', N'test', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__booking__movie_id] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__booking__movie_id]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__booking__user_id] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__booking__user_id]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK__seat__movie_id] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK__seat__movie_id]
GO
