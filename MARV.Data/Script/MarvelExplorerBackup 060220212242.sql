
USE [MarvelExplorer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioLike]    Script Date: 6/2/2021 22:41:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioLike](
	[IdUsuario] [nvarchar](450) NOT NULL,
	[IdCharacter] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UsuarioLike] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC,
	[IdCharacter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210206153009_Init', N'3.1.11')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'luz.rivas@outlook.es', N'LUZ.RIVAS@OUTLOOK.ES', N'luz.rivas@outlook.es', N'LUZ.RIVAS@OUTLOOK.ES', 0, N'AQAAAAEAACcQAAAAEAe9tzh42TMYur0dbAmTlXNn4WhP6jDQE/G8yMuB/byAkah8RYIcbS8IYAeEJQD77w==', N'TXFS6YEQXXAJKFDFQYEL3UINPVQUZL7K', N'8d399a29-0e71-477e-9bf0-774c00fdf962', NULL, 0, 0, NULL, 1, 0, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'luz2.rivas@outlook.es', N'LUZ2.RIVAS@OUTLOOK.ES', N'luz2.rivas@outlook.es', N'LUZ2.RIVAS@OUTLOOK.ES', 0, N'AQAAAAEAACcQAAAAEEoq+Vu5/2DNEFPbFaqIYc2Uf9Xbw10AP/oOLbkon2PwtVHgJkBqoEBdbm5RVS8HiQ==', N'UTEMGZCZDVLB4A65JOYHRLVJ66R5FA7H', N'b0a28e8c-8e05-46e6-913a-dfb59b6f5656', NULL, 0, 0, NULL, 1, 0, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'af88f3c9-f8cc-4e0a-91c8-611e999240fb', N'luz.rivas@outlook.es2', N'LUZ.RIVAS@OUTLOOK.ES2', N'luz.rivas@outlook.es2', N'LUZ.RIVAS@OUTLOOK.ES2', 0, N'AQAAAAEAACcQAAAAEFNotJUAEGJ5bq5KkUS8FPRkNEBPTtAXY0TWTfzB4kugruNcOA7qPdgdyVju94f9Yw==', N'UIIYIFBPYESCAJB7R3SZIYMQX4UZTMVI', N'55db7c66-dda7-41da-b7cd-c6e3c649e76c', NULL, 0, 0, NULL, 1, 0, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'luz1.rivas@outlook.es', N'LUZ1.RIVAS@OUTLOOK.ES', N'luz1.rivas@outlook.es', N'LUZ1.RIVAS@OUTLOOK.ES', 0, N'AQAAAAEAACcQAAAAEOpZN+K2sND4SrNpax2KwkKLEM3ayWBdES9mg4EksiLRsjglw8LLbj6wIilOIdmmFA==', N'T6QG4QX45E5O424LXHOJD3KD5PPJQR5D', N'37bf4b71-6b7d-4ca3-a2a3-4b964267adc4', NULL, 0, 0, NULL, 1, 0, N'Usuario')
GO
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009146')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009160')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009164')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009165')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009217')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1009435')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1010752')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1010910')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1010993')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1011095')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1011158')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1011422')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1011766')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'85bf3860-3e1e-44c8-9579-d7688e9df750', N'1017100')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1009217')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1009435')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1009475')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1010752')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1010910')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1010993')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1011014')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'9e68edfc-cb8d-4a4d-a341-90574b660940', N'1011095')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1009154')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1009163')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1009168')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1009596')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1010674')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1010910')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1010993')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1011095')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1011176')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1011198')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1011297')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1011338')
INSERT [dbo].[UsuarioLike] ([IdUsuario], [IdCharacter]) VALUES (N'd2b091b5-f17d-4cab-9d2e-c73a3555fdb2', N'1017574')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/2/2021 22:41:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/2/2021 22:41:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/2/2021 22:41:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/2/2021 22:41:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/2/2021 22:41:05 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/2/2021 22:41:05 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/2/2021 22:41:05 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UsuarioLike]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioLike_AspNetUsers_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UsuarioLike] CHECK CONSTRAINT [FK_UsuarioLike_AspNetUsers_IdUsuario]
GO
USE [master]
GO
ALTER DATABASE [MarvelExplorer] SET  READ_WRITE 
GO
