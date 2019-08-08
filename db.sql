USE [cinema]
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 7/26/2019 2:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookings](
	[booking_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[seat_id] [int] NOT NULL,
	[booking_date] [date] NOT NULL,
	[booking_time] [time](7) NOT NULL,
	[booking_is_available] [bit] NOT NULL,
 CONSTRAINT [PK__bookings] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movies]    Script Date: 7/26/2019 2:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[movie_id] [int] NOT NULL,
	[movie_name] [varchar](50) NULL,
	[movie_date] [date] NULL,
 CONSTRAINT [PK_movies_movieid] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seats]    Script Date: 7/26/2019 2:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seats](
	[movie_id] [int] NOT NULL,
	[seat_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_seats] PRIMARY KEY CLUSTERED 
(
	[seat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 7/26/2019 2:10:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](50) NULL,
	[user_password] [varchar](50) NULL,
	[user_is_admin] [bit] NOT NULL,
 CONSTRAINT [PK_users_userid] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_date]) VALUES (1, N'movie 1 testez', CAST(N'2017-04-23' AS Date))
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_date]) VALUES (2, N'movie 2 testez', CAST(N'2013-04-23' AS Date))
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_password], [user_is_admin]) VALUES (1, N'User2', N'test2@test2.ro', N'test2', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_password], [user_is_admin]) VALUES (2, N'testez put', N'test2@test2.ro', N'test2', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_password], [user_is_admin]) VALUES (3, N'123', N'123@test.ro', N'123', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_email], [user_password], [user_is_admin]) VALUES (4, N'admin', N'admin@test.ro', N'adm', 1)
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD  CONSTRAINT [FK__bookings__movie_id] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[bookings] CHECK CONSTRAINT [FK__bookings__movie_id]
GO
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD  CONSTRAINT [FK__bookings__seat_id] FOREIGN KEY([seat_id])
REFERENCES [dbo].[seats] ([seat_id])
GO
ALTER TABLE [dbo].[bookings] CHECK CONSTRAINT [FK__bookings__seat_id]
GO
ALTER TABLE [dbo].[bookings]  WITH CHECK ADD  CONSTRAINT [FK__bookings__user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bookings] CHECK CONSTRAINT [FK__bookings__user_id]
GO
ALTER TABLE [dbo].[seats]  WITH CHECK ADD  CONSTRAINT [FK__seats__movie_id] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[seats] CHECK CONSTRAINT [FK__seats__movie_id]
GO
ALTER TABLE [dbo].[seats]  WITH CHECK ADD  CONSTRAINT [FK__seats__user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[seats] CHECK CONSTRAINT [FK__seats__user_id]
GO
