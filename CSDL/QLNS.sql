USE [master]
GO
/****** Object:  Database [QLNS]    Script Date: 01/13/2022 17:33:45 ******/
CREATE DATABASE [QLNS] ON  PRIMARY 
( NAME = N'QLNS', FILENAME = N'E:\CSDL\QLNS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNS_log', FILENAME = N'E:\CSDL\QLNS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNS] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLNS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLNS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLNS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLNS] SET ARITHABORT OFF
GO
ALTER DATABASE [QLNS] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QLNS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLNS] SET AUTO_SHRINK ON
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLNS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLNS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLNS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLNS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLNS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLNS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLNS] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLNS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLNS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLNS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLNS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLNS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLNS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLNS] SET  READ_WRITE
GO
ALTER DATABASE [QLNS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLNS] SET  MULTI_USER
GO
ALTER DATABASE [QLNS] SET PAGE_VERIFY TORN_PAGE_DETECTION
GO
ALTER DATABASE [QLNS] SET DB_CHAINING OFF
GO
USE [QLNS]
GO
/****** Object:  Table [dbo].[TblHoSoThuViec]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblHoSoThuViec](
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[TDHocVan] [nvarchar](50) NULL,
	[HocHam] [nvarchar](50) NULL,
	[ViTriThuViec] [nvarchar](50) NULL,
	[NgayTV] [date] NULL,
	[ThangTV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblHeSoThuViec] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'001       ', N'Nguyễn Văn A', CAST(0xB30A0B00 AS Date), N'nam', N'Hải Dương', N'đại học', N'đại học', N'Nhân viên', CAST(0xEC2F0B00 AS Date), N'5/2008', N'ddfdd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp02      ', N'002       ', N'Nguyễn Thị B', CAST(0xFB110B00 AS Date), N'nữ', N'Hưng Yên', N'cao đẳng', N'cao đẳng', N'Nhân viên', CAST(0xF12F0B00 AS Date), N'8/2008', N'hgserww')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'003       ', N'Nguyễn Thị T', CAST(0xDA110B00 AS Date), N'nữ', N'Hà Nam', N'đại học', N'đại học', N'Nhân viên', CAST(0xF42F0B00 AS Date), N'11/2008', N'phòng này vui thiệt')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp03      ', N'0030      ', N'Nguyễn Thị T', CAST(0x15120B00 AS Date), N'nữ', N'Hà Nam', N'đại học', N'đại học', N'Nhân viên', CAST(0xA6300B00 AS Date), N'11/2008', N'dkjddw')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mp04      ', N'004       ', N'Trần Văn B', CAST(0x3F0F0B00 AS Date), N'nam', N'Hải Dương', N'đại học', N'đại học', N'CB Kế toán', CAST(0xC02E0B00 AS Date), N'8/2007', N'gtyyy')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb08      ', N'008       ', N'Nguyễn Thị Quyên', CAST(0x570F0B00 AS Date), N'nữ', N'Ninh Bình', N'cao đẳng', N'cao đẳng', N'Tổ trưởng', CAST(0xC02E0B00 AS Date), N'8/2007', N'gsfbfd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb09      ', N'009       ', N'Nguyễn Thị Thúy', CAST(0xA8100B00 AS Date), N'nữ', N'Hà Nội', N'đại học', N'đại học', N'CB Kế toán', CAST(0xC02E0B00 AS Date), N'8/2007', N'hjhgffd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb010     ', N'010       ', N'Bùi Thị Mai', CAST(0x8B100B00 AS Date), N'nữ', N'Quảng Ninh', N'cao đẳng', N'cao đẳng', N'CB Kế toán', CAST(0xF12F0B00 AS Date), N'8/2008', N'hffgfd')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb011     ', N'011       ', N'Đỗ Văn Bé', CAST(0x650C0B00 AS Date), N'nam', N'Thái Bình', N'trung cấp', N'trung cấp', N'Lái xe', CAST(0xDA310B00 AS Date), N'9/2009', N'gfnfhfbn')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb012     ', N'012       ', N'Lê Thị C', CAST(0x6E100B00 AS Date), N'nữ', N'Hải Dương', N'đại học', N'nhân viên', N'Nhân viên', CAST(0xD9310B00 AS Date), N'9/2009', N'bdsvvs')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb013     ', N'013       ', N'Trần Ngọc V', CAST(0x84090B00 AS Date), N'nữ', N'Hà Nam', N'cao đẳng', N'cao đẳng', N'Nhân viên', CAST(0x4E300B00 AS Date), N'8/2008', N'tgge')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb014     ', N'014       ', N'Nguyễn Thị D', CAST(0x0F0E0B00 AS Date), N'nữ', N'Hải Dương', N'đại học', N'quản đốc', N'Quản đốc', CAST(0xBB310B00 AS Date), N'8/2009', N'fgbnf')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb015     ', N'015       ', N'Bùi Văn G', CAST(0xA7090B00 AS Date), N'nam', N'Hải Dương', N'đại học', N'nhân viên', N'Nhân viên ', CAST(0xBB310B00 AS Date), N'8/2009', N'ddvssdf')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb05      ', N'05        ', N'Trần Đức Quỳnh', CAST(0x5D0F0B00 AS Date), N'nam', N'Thái Bình', N'trung cấp', N'trung cấp', N'PP Điện toán', CAST(0xC02E0B00 AS Date), N'8/2007', N'hhhjjj')
INSERT [dbo].[TblHoSoThuViec] ([MaPhong], [MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [TDHocVan], [HocHam], [ViTriThuViec], [NgayTV], [ThangTV], [GhiChu]) VALUES (N'mb07      ', N'07        ', N'Dương Hoàng Long', CAST(0xE90D0B00 AS Date), N'nam', N'Hải Dương', N'cao đẳng', N'cao đẳng', N'CB Kế hoạch', CAST(0xC02E0B00 AS Date), N'8/2007', N'tyteee')
/****** Object:  Table [dbo].[TblBoPhan]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblBoPhan](
	[MaBophan] [char](10) NOT NULL,
	[TenBoPhan] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBophan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm010      ', N'kinh doanh ', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm011      ', N'kinh doanh', N'kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm012      ', N'kế toán', N'kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm013      ', N'kinh doanh', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm014      ', N'kế toán', N'hoạt động kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm015      ', N'kế toán', N'phòng kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'm020      ', N'kế toán', N'kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb01      ', N'kinh doanh', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb010     ', N'kinh doanh', N'kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb02      ', N'tài chính', N'hoạt độn tài chính')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb03      ', N'kế toán', N'hoạt động kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb04      ', N'vật tư', N'hoạt động vật tư')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb05      ', N'kế toán', N'hoạt động kế toán')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb06      ', N'kinh doanh', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb07      ', N'kinh doanh', N'hoạt động kinh doanh')
INSERT [dbo].[TblBoPhan] ([MaBophan], [TenBoPhan], [GhiChu]) VALUES (N'mb08      ', N'tài chính', N'quản lý tiền lương')
/****** Object:  Table [dbo].[TblBangLuongCTy]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblBangLuongCTy](
	[MaLuong] [char](10) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LCB] [int] NULL,
	[PCChucVu] [int] NULL,
	[NgayNhap] [date] NULL,
	[LCBMoi] [int] NULL,
	[NgaySua] [date] NULL,
	[LyDo] [nvarchar](50) NULL,
	[PCCVuMoi] [int] NULL,
	[NgaySuaPC] [date] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblBangLuongCTy] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml01      ', N'CB Kế hoạch', N'CB Kế hoạch', 1500000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 250, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml02      ', N'Cán bộ', N'Cán bộ', 2000000, 300, CAST(0x5C310B00 AS Date), 2500000, CAST(0x9B310B00 AS Date), N'hoàn thành kế hoạch', 500, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml03      ', N'Thư ký', N'Thư ký giám đốc', 1800000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 200, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml04      ', N'Nhân viên', N'Nhân viên', 1500000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 250, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml05      ', N'CB Kế toán', N'CB Kế toán', 1500000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 250, CAST(0x9C310B00 AS Date), N'thưởng ')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml06      ', N'Phó GĐ', N'Phó GĐ', 2500000, 300, CAST(0x5C310B00 AS Date), 3000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 350, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml07      ', N'Giám đốc', N'Giám đốc', 3000000, 350, CAST(0x5C310B00 AS Date), 3500000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 400, CAST(0x9C310B00 AS Date), N'thưởng')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml08      ', N'Nhân viên', N'Nhân viên', 1800000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 250, CAST(0x9C310B00 AS Date), N'thưởng')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml09      ', N'Nhân viên', N'Nhân viên', 1500000, 200, CAST(0x5C310B00 AS Date), 2000000, CAST(0x9B310B00 AS Date), N'hoàn thành nhiệm vụ', 250, CAST(0x9C310B00 AS Date), N'tăng lương')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml10      ', N'Giám đốc', N'Giám đốc', 4500000, 450, CAST(0x35430B00 AS Date), 5000000, CAST(0x35430B00 AS Date), N'ký được hợp đồng', 500, CAST(0x35430B00 AS Date), N'thưởng')
INSERT [dbo].[TblBangLuongCTy] ([MaLuong], [ChucVu], [ChucDanh], [LCB], [PCChucVu], [NgayNhap], [LCBMoi], [NgaySua], [LyDo], [PCCVuMoi], [NgaySuaPC], [GhiChu]) VALUES (N'ml11      ', N'Kế toán', N'Kế toán trưởng', 5000000, 200, CAST(0x45250B00 AS Date), 5200000, CAST(0xD0260B00 AS Date), N'hoàn thành nhiệm vụ', 350, CAST(0x00280B00 AS Date), N'tăng lương')
/****** Object:  Table [dbo].[tbuser]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbuser](
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Ngaysinh] [date] NULL,
 CONSTRAINT [PK_tbuser] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbuser] ([Username], [Pass], [Ten], [Ngaysinh]) VALUES (N'admin', N'123456', N'Nguyễn Thị Ngọc', CAST(0x3C050B00 AS Date))
INSERT [dbo].[tbuser] ([Username], [Pass], [Ten], [Ngaysinh]) VALUES (N'trang', N'123456', N'Lê Thùy Trang', CAST(0x66230B00 AS Date))
/****** Object:  Table [dbo].[TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblTTNVCoBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](30) NULL,
	[BiDanh] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[TTHonNhan] [nvarchar](50) NULL,
	[CMTND] [char](12) NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LoaiHD] [nvarchar](50) NULL,
	[ThoiGian] [nvarchar](10) NULL,
	[NgayKy] [date] NULL,
	[NgayHetHan] [date] NULL,
	[Anh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblTTNVCoBan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'm010      ', N'mp10      ', N'001       ', N'Nguyễn Tường San', N'Nhân viên kiểm toán', CAST(0x00170B00 AS Date), N'Nữ', N'Rồi', N'036789520112', CAST(0x45250B00 AS Date), N'Hà Nội', N'Hà Nội', N'Nhân viên kiểm toán', N'Kinh Tế', N'5 năm', CAST(0xCE410B00 AS Date), CAST(0xF0480B00 AS Date), N'Có', N'Nhân viên kiểm toán')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'0010      ', N'Nguyễn Thị Thúy', N'CB Kế Toán', CAST(0xA8100B00 AS Date), N'Nữ', N'Chưa', N'036335284091', CAST(0x2B220B00 AS Date), N'Hà Nội', N'CB Kế Toán', N'CB Kế Toán', N'Kinh Tế', N'36 Tháng', CAST(0xCB310B00 AS Date), CAST(0x13360B00 AS Date), N'Có', N'CB Kế toán ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp04      ', N'0011      ', N'Bùi Thị Mai', N'CB Kế Toán', CAST(0xA9100B00 AS Date), N'Nữ', N'Chưa', N'036137479458', CAST(0xEC230B00 AS Date), N'Quảng Ninh', N'CB Kế Toán', N'CB Kế Toán', N'Kinh Tế', N'24 Tháng', CAST(0x922F0B00 AS Date), CAST(0x6D320B00 AS Date), N'Không                                             ', N'CB Kế toán')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp04      ', N'0012      ', N'Đỗ Văn Bé', N'Lái Xe', CAST(0x650C0B00 AS Date), N'Nam', N'Rồi', N'036278984755', CAST(0x58200B00 AS Date), N'thai binh', N'Lái Xe', N'Lái Xe', N'Kinh Tế', N'24 Tháng', CAST(0xBB310B00 AS Date), CAST(0xEF8A1300 AS Date), N'Không                                             ', N'Lái xe')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp04      ', N'0013      ', N'Lê Thị C', N'Nhân Viên', CAST(0x6E100B00 AS Date), N'Nữ', N'Rồi', N'036890765421', CAST(0xF9220B00 AS Date), N'Thái Bình', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'36 Tháng', CAST(0x67300B00 AS Date), CAST(0x1C360B00 AS Date), N'Có                                                ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb010     ', N'mp04      ', N'0014      ', N'Nguyễn Văn D', N'Nhân Viên', CAST(0x0F0E0B00 AS Date), N'Nam', N'Rồi', N'036890444432', CAST(0xDF1F0B00 AS Date), N'Hải Dương', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'24 Tháng', CAST(0xD02F0B00 AS Date), CAST(0xAA320B00 AS Date), N'Không                                             ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb014     ', N'mp014     ', N'0015      ', N'Nguyễn Văn D', N'Nhân Viên', CAST(0xD30D0B00 AS Date), N'Nữ', N'Chưa', N'1245099878  ', CAST(0x37230B00 AS Date), N'Hải Dương', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'36 Tháng', CAST(0xEE2F0B00 AS Date), CAST(0x35340B00 AS Date), N'Có                                                ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb015     ', N'mp015     ', N'0016      ', N'Bùi Văn G', N'Nhân Viên', CAST(0xA7090B00 AS Date), N'Nam', N'Rồi', N'1453977667  ', CAST(0x95200B00 AS Date), N'Hải Phòng', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'24 Tháng', CAST(0x2F300B00 AS Date), CAST(0x09330B00 AS Date), N'Không                                             ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb016     ', N'mp016     ', N'0017      ', N'Hồ Thị Mơ', N'Quản Đốc', CAST(0x400F0B00 AS Date), N'Nữ', N'Rồi', N'1459795044  ', CAST(0xF6220B00 AS Date), N'Hà Tây', N'Quản Đốc', N'Quản Đốc', N'Kinh Tế', N'24 Tháng', CAST(0x10300B00 AS Date), CAST(0xAD320B00 AS Date), N'Có                                                ', N'Quản đốc')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb017     ', N'mp017     ', N'0018      ', N'Nguyễn Văn H', N'Nhân Viên', CAST(0xE7090B00 AS Date), N'Nam', N'Rồi', N'2889548906  ', CAST(0x7A200B00 AS Date), N'Hưng Yên', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'36 Tháng', CAST(0xDB2E0B00 AS Date), CAST(0x90340B00 AS Date), N'Không                                             ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'002       ', N'Nguyễn Thị B', N'Nhân Viên', CAST(0x76120B00 AS Date), N'Nữ', N'Chưa', N'123456789   ', CAST(0x1E270B00 AS Date), N'Hải Dương', N'Nhân Viên Marketing', N'Nhân Viên Marketing', N'Kinh Tế', N'36 Tháng', CAST(0x432E0B00 AS Date), CAST(0x8B320B00 AS Date), N'Không                                             ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb019     ', N'mp019     ', N'0020      ', N'Phạm Văn L', N'Bảo Vệ', CAST(0x51FF0A00 AS Date), N'Nam', N'Rồi', N'1456899900  ', CAST(0xC01D0B00 AS Date), N'Hà Tây', N'Bảo Vệ', N'Bảo Vệ', N'Kinh Tế', N'2 Năm', CAST(0xEE2F0B00 AS Date), CAST(0xC8320B00 AS Date), N'Có                                                ', N'Bảo vệ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'm020      ', N'mp01      ', N'0021      ', N'Nguyễn Văn Cường', N'Giám Đốc', CAST(0xF0FC0A00 AS Date), N'Nam', N'Rồi', N'036354678843', CAST(0xF61B0B00 AS Date), N'Hải Dương', N'Giám Đốc', N'Giám Đốc', N'Kinh Tế', N'2 Năm', CAST(0x802E0B00 AS Date), CAST(0xA3350B00 AS Date), N'Có                                                ', N'Giám đốc')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb022     ', N'mp022     ', N'0023      ', N'Lê Hoài Thu', N'CB Bảo Hiểm', CAST(0x5C0F0B00 AS Date), N'Nữ', N'Rồi', N'1459077992  ', CAST(0x8B210B00 AS Date), N'Hưng Yên', N'CB Bảo Hiểm', N'CB Bảo Hiểm', N'Kinh Tế', N'36 Tháng', CAST(0x14300B00 AS Date), CAST(0x5B340B00 AS Date), N'Có                                                ', N'CB Bảo hiểm')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb023     ', N'mp023     ', N'0024      ', N'Hồ Văn S', N'Nhân Viên', CAST(0x69090B00 AS Date), N'Nam', N'Rồi', N'2980554567  ', CAST(0x3D200B00 AS Date), N'Hải Dương', N'Nhân Viên', N'Nhân Viên', N'Kinh Tế', N'24 Tháng', CAST(0x14300B00 AS Date), CAST(0xEE320B00 AS Date), N'Có                                                ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb024     ', N'mp024     ', N'0025      ', N'Phạm Văn Z', N'Cán Bộ', CAST(0xBC000B00 AS Date), N'Nam', N'Rồi', N'8947744895  ', CAST(0xC01D0B00 AS Date), N'Bắc Giang', N'Cán Bộ', N'Cán Bộ', N'Kinh Tế', N'24 Tháng', CAST(0x14300B00 AS Date), CAST(0xEE320B00 AS Date), N'Không                                             ', N'Cán bộ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb025     ', N'mp025     ', N'0026      ', N'Bùi Thị N', N'Cán Bộ', CAST(0xB00D0B00 AS Date), N'Nữ', N'Chưa', N'3895277845  ', CAST(0x15230B00 AS Date), N'Bắc Ninh', N'Cán Bộ', N'Cán Bộ', N'Kinh Tế', N'24 Tháng', CAST(0x14300B00 AS Date), CAST(0xEE320B00 AS Date), N'Có                                                ', N'Cán bộ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'003       ', N'Nguyễn Thị T', N'Thư Ký', CAST(0xDA110B00 AS Date), N'Nữ', N'Chưa', N'145287556   ', CAST(0xA9280B00 AS Date), N'Hà Nam', N'Thư Ký GĐ', N'Thư Ký GĐ', N'Kinh Tế', N'24 Tháng', CAST(0xD42F0B00 AS Date), CAST(0xAE320B00 AS Date), N'Không Có                                          ', N'Thư ký')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'004       ', N'Nguyễn Văn N', N'Phó GĐ', CAST(0x66110B00 AS Date), N'Nam', N'Rồi', N'166328637   ', CAST(0x3A230B00 AS Date), N'Bắc Giang', N'Phó GĐ', N'Phó GĐ', N'Kinh Tế', N'48 Tháng', CAST(0x5C2F0B00 AS Date), CAST(0xA4330B00 AS Date), N'Có                                                ', N'Phó GĐ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'005       ', N'Nguyễn Thị B', N'Nhân Viên', CAST(0x8E100B00 AS Date), N'Nữ', N'Chưa', N'123456789   ', CAST(0x1E270B00 AS Date), N'Hưng Yên', N'Nhân Viên Marketing', N'Nhân Viên Marketing', N'Kinh Tế', N'36 Tháng', CAST(0x432E0B00 AS Date), CAST(0x8B320B00 AS Date), N'Không Có                                          ', N'Nhân viên')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb05      ', N'mp05      ', N'006       ', N'Trần Đức Quỳnh', N'PP Điện Toán', CAST(0x5D0F0B00 AS Date), N'Nam', N'Rồi', N'145678899   ', CAST(0x3E200B00 AS Date), N'Thái Bình', N'PP Điện Toán', N'PP Điện Toán', N'Kinh Tế', N'24 Tháng', CAST(0xD32F0B00 AS Date), CAST(0xAD320B00 AS Date), N'Có                                                ', N'PP Điện toán')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb06      ', N'mp06      ', N'007       ', N'Lê Bình Nam', N'Trường Phòng', CAST(0x7D0F0B00 AS Date), N'Nam', N'Chưa', N'1983477217  ', CAST(0x71230B00 AS Date), N'Hải Dương', N'Trưởng Phòng', N'Trưởng Phòng', N'Kinh Tế', N'36 Tháng', CAST(0x7E2E0B00 AS Date), CAST(0xC6320B00 AS Date), N'Có                                                ', N'Trưởng phòng')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb07      ', N'mp07      ', N'008       ', N'Dương Đức Long', N'CB Kế Hoạch', CAST(0xE90D0B00 AS Date), N'Nam', N'Chưa', N'3494388888  ', CAST(0xEC210B00 AS Date), N'Hải Phòng', N'CB Kế Hoạch', N'CB Kế Hoạch', N'Kinh Tế', N'24 Tháng', CAST(0x49300B00 AS Date), CAST(0xBE320B00 AS Date), N'Có                                                ', N'Cán bộ ')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb08      ', N'mp08      ', N'009       ', N'Nguyễn Thị Quyên', N'Tổ Trưởng', CAST(0x570F0B00 AS Date), N'Nữ', N'Rồi', N'2174743899  ', CAST(0xFF220B00 AS Date), N'Ninh Bình', N'Tổ Trưởng', N'Tổ Trưởng ', N'Kinh Tế', N'24 Tháng', CAST(0x14300B00 AS Date), CAST(0xEE320B00 AS Date), N'Có                                                ', N'Tổ trưởng')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'mb08      ', N'mp04      ', N'0090      ', N'Nguyễn Thị Quyên', N'Tổ Trường', CAST(0xC60E0B00 AS Date), N'Nữ', N'Rồi', N'036174743899', CAST(0xEB230B00 AS Date), N'Ninh Bình', N'Tổ Trưởng', N'Tổ Trưởng', N'Kinh Tế', N'24 Tháng', CAST(0xC5300B00 AS Date), CAST(0x9F330B00 AS Date), N'Có                                                ', N'Tổ trưởng')
INSERT [dbo].[TblTTNVCoBan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [BiDanh], [NgaySinh], [GioiTinh], [TTHonNhan], [CMTND], [NgayCap], [NoiCap], [ChucVu], [ChucDanh], [LoaiHD], [ThoiGian], [NgayKy], [NgayHetHan], [Anh], [GhiChu]) VALUES (N'm015      ', N'mp02      ', N'0872      ', N'nguyễn văn a', N'Bảo vệ', CAST(0x77430B00 AS Date), N'Nam', N'chưa', N'026464677676', CAST(0x77430B00 AS Date), N'nam định', N'bảoveej', N'ậhjada', N'kinh tê', N'5 năm', CAST(0x77430B00 AS Date), CAST(0x77430B00 AS Date), N'không', N'không')
/****** Object:  Table [dbo].[TblCongKhoiDieuHanh]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCongKhoiDieuHanh](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [char](4) NULL,
	[PHuCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'001       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 2, 5, N'ghddfd')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'002       ', 2000000, N'300 ', 200, N'12        ', N'2008               ', 5, 1, 7, N'hjjggj')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'003       ', 1800000, N'250 ', 200, N'12        ', N'2008               ', 5, 1, 6, N'ghgghhg')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'004       ', 2000000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 4, N'keke')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 3, N'fgnhhm')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 4, 1, 6, N'yjjjty')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, N'300 ', 200, N'5         ', N'2009               ', 8, 1, 8, N'grerrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, N'250 ', 200, N'5         ', N'2009               ', 6, 3, 7, N'hrtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, N'200 ', 100, N'5         ', N'2009               ', 4, 2, 7, N'ttutrtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, N'300 ', 300, N'5         ', N'2009               ', 6, 2, 8, N'htt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, N'300 ', 200, N'5         ', N'2009               ', 5, 2, 6, N'tett')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, N'400 ', 100, N'5         ', N'2009               ', 6, 3, 8, N'ytrer')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'jtyrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800000, N'100 ', 100, N'5         ', N'2009               ', 4, 2, 6, N'rrtrt')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0016      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0090      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'trtre')
INSERT [dbo].[TblCongKhoiDieuHanh] ([MaNV], [LCB], [PhuCapCVu], [PHuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0017      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'jtyrt')
/****** Object:  Table [dbo].[TblTTCaNhan]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblTTCaNhan](
	[MaNV] [char](10) NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[NguyenQuan] [nvarchar](50) NULL,
	[DCThuongChu] [nvarchar](100) NULL,
	[DCTamChu] [nvarchar](100) NULL,
	[SDT] [char](12) NULL,
	[DanToc] [nvarchar](30) NULL,
	[TonGiao] [nvarchar](20) NULL,
	[QuocTich] [nvarchar](20) NULL,
	[TiengNN] [nvarchar](50) NULL,
	[TrinhDoNN] [nvarchar](50) NULL,
	[HocVan] [nvarchar](30) NULL,
	[HocHam] [nvarchar](30) NULL,
	[NgayVaoDoan] [date] NULL,
	[TenDoanThe] [nvarchar](50) NULL,
	[ChucVuDoan] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0020      ', N'Nam Định', N'Nam Định', N'Mỹ Tân-Mỹ Lộc-Nam Định', N'Mỹ Tân-Mỹ Lộc-Nam Định', N'0824562000  ', N'Kinh', N'Không', N'Việt Nam ', N'Anh', N'Anh', N'Đại Học', N'Chính Quy', CAST(0x34430B00 AS Date), N'Đoàn Thanh Niên', N'Đoàn Viên', N'Không Có')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'003       ', N'Hà Nội', N'Hà Nội', N'50 Hai Bà Trưng', N'50 Hai Bà Trưng', N'0826789001  ', N'Kinh', N'Không', N'Việt Nam ', N'Anh', N'B1', N'Đại Học', N'Chính Quy', CAST(0x4C3F0B00 AS Date), N'Đoàn Thanh Niên', N'Đoàn Viên', N'Không Có')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0090      ', N'Nam Định', N'Nam Định', N'50 Ngô Quyền', N'35 Thanh Xuân', N'0842560012  ', N'Kinh', N'Không', N'Việt Nam', N'Anh', N'B1', N'Cao Đẳng', N'Chính Quy', CAST(0xF33E0B00 AS Date), N'Đoàn Thanh Niên', N'Đoàn Viên', N'jajhajdna')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'009       ', N'Hải Dương', N'Hải Dương', N'Đường Ngô Quyền-TP Hải Dương', N'Ng? 202-Đư?ng Ngô Quy?n-TP H?i Dương', N'01684539801 ', N'Kinh', N'Không', N'Vi?t Nam', N'Hàn', N'N1', N'Cao Đẳng', N'Chính Quy', CAST(0xA6240B00 AS Date), N'Đoàn Thanh Niên', N'Đoàn Viên', N'kkkkgg')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0010      ', N'Hải Dương', N'Hải Dương', N'Đưởng Ngô Quyền-TP Hải Dương', N'Đưởng Ngô Quyền_TP Hải Dương', N'01687499334 ', N'Kinh', N'Không', N'Việt Nam', N'Anh', N'B1', N'Đại Học', N'Chính Quy', CAST(0x96200B00 AS Date), N'Đoàn Thanh Niên Việt Nam', N'Đoàn Viên', N'Không Có')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0011      ', N'Ninh Bình', N'Ninh Bình', N'Khu 5 - Đưởng Thanh Bình', N'Khu 5 - Đư?ng Thanh B?nh', N'0167445999  ', N'Kinh', N'Không', N'Vi?t Nam', N'Anh', N'C', N'Cao Đẳng', N'Chính Quy', CAST(0x26220B00 AS Date), N'Đoàn Thanh Niên Vi?t Nam', N'Đoàn Viên', N'lkljhjh')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0012      ', N'Hải Dương', N'Hải Dương', N'Tứ Kỳ - TP Hải Dương', N'Tứ Kỳ - TP Hải Dương', N'0988578232  ', N'Kinh', N'Không', N'Việt Nam', N'Không', N'Không', N'Cao Đẳng', N'Chính Quy', CAST(0x8C210B00 AS Date), N'Đoàn Thanh Niên Việt Nam', N'Đoàn Viên', N'Không Có')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0013      ', N'Hải Dương', N'Hải Dương', N'TP Hải Dương', N'TP H?i Dương', N'0988765441  ', N'Kinh', N'Không', N'Vi?t Nam', N'Anh', N'A1', N'Đại Học', N'Chính Quy', CAST(0x86240B00 AS Date), N'Đoàn Thanh Niên Vi?t Nam', N'Đoàn Viên', N'Không Có')
INSERT [dbo].[TblTTCaNhan] ([MaNV], [NoiSinh], [NguyenQuan], [DCThuongChu], [DCTamChu], [SDT], [DanToc], [TonGiao], [QuocTich], [TiengNN], [TrinhDoNN], [HocVan], [HocHam], [NgayVaoDoan], [TenDoanThe], [ChucVuDoan], [GhiChu]) VALUES (N'0014      ', N'Hải Dương', N'Hải Dương', N'Gia Lộc - TP Hải Dương', N'Gia L?c - TP H?i Dương', N'0986743217  ', N'Kinh', N'Không', N'Vi?t Nam', N'Không', N'Không', N'Trung Cấp', N'Chính Quy', CAST(0x64240B00 AS Date), N'Đoàn Thanh Niên Vi?t Nam', N'Đoàn Viên', N'kjhghj')
/****** Object:  Table [dbo].[TblThaiSan]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblThaiSan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[NgayVeSom] [date] NULL,
	[NgayNghiSinh] [date] NULL,
	[NgayLamTroLai] [date] NULL,
	[TroCapCTY] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb01      ', N'mp01      ', N'001       ', N'Nguyễn Thị G', CAST(0x700A0B00 AS Date), CAST(0xD0390B00 AS Date), CAST(0xD72B0B00 AS Date), CAST(0x512C0B00 AS Date), 500000, N'âjsjsjs')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'002       ', N'Nguyễn Thị B', CAST(0x76120B00 AS Date), CAST(0xAA410B00 AS Date), CAST(0xBA300B00 AS Date), CAST(0x6F310B00 AS Date), 100000, N'kgfgj')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'003       ', N'Nguyễn Thị T', CAST(0x3C830A00 AS Date), CAST(0x5C360B00 AS Date), CAST(0x70240B00 AS Date), CAST(0x27250B00 AS Date), 100000, N'dedwe')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'004       ', N'Phạm Thị L', CAST(0x66110B00 AS Date), CAST(0xA6350B00 AS Date), CAST(0xA6240B00 AS Date), CAST(0x13260B00 AS Date), 100000, N'ererwewe')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb05      ', N'mpo5      ', N'005       ', N'Nguyễn Thị M', CAST(0x210F0B00 AS Date), CAST(0x6E370B00 AS Date), CAST(0x7E2E0B00 AS Date), CAST(0x822E0B00 AS Date), 500000, N'trtr')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb09      ', N'mp09      ', N'009       ', N'Nguyễn Thị Quyên', CAST(0x570F0B00 AS Date), CAST(0xC2350B00 AS Date), CAST(0x11300B00 AS Date), CAST(0x0A300B00 AS Date), 100000, N'erfdff')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb011     ', N'mp011     ', N'0011      ', N'Bùi Thị Mai', CAST(0x8B100B00 AS Date), CAST(0x6B370B00 AS Date), CAST(0x112D0B00 AS Date), CAST(0xF92C0B00 AS Date), 200000, N'fbvfdd')
INSERT [dbo].[TblThaiSan] ([MaBoPhan], [MaPhong], [MaNV], [HoTen], [NgaySinh], [NgayVeSom], [NgayNghiSinh], [NgayLamTroLai], [TroCapCTY], [GhiChu]) VALUES (N'mb07      ', N'mp07      ', N'007       ', N'Lê Thị D', CAST(0xE90B0B00 AS Date), CAST(0x03330B00 AS Date), CAST(0x0F300B00 AS Date), CAST(0x77310B00 AS Date), 100000, N'lerlkreler')
/****** Object:  Table [dbo].[TblTangLuong]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblTangLuong](
	[MaNV] [char](10) NULL,
	[HoTen] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[ChucDanh] [nvarchar](50) NULL,
	[LCBCu] [int] NULL,
	[LCBMoi] [int] NULL,
	[PCapCu] [int] NULL,
	[PcapMoi] [int] NULL,
	[NgayTang] [date] NULL,
	[LyDo] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'002       ', N'Nguyễn Thị B', N'nữ', N'Nhân viên', N'Nhân viên', 150000, 180000, 100, 150, CAST(0x71270B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'003       ', N'Nguyễn Thị T', N'nữ', N'Thư ký', N'Thư ký GĐ', 150000, 180000, 100, 150, CAST(0x71270B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'004       ', N'Nguyễn Thị D', N'nữ', N'Nhân viên', N'Nhân viên', 180000, 200000, 200, 250, CAST(0x392A0B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'005       ', N'Lê Văn S', N'nam', N'Nhân viên', N'Nhân viên', 150000, 200000, 500, 500, CAST(0x392A0B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'006       ', N'Nguyễn Văn E', N'nam', N'Nhân viên', N'Nhân viên', 150000, 200000, 200, 250, CAST(0x392A0B00 AS Date), N'hoàn thành')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'007       ', N'Trần Thị F', N'nữ', N'Tổ Trưởng', N'Tổ trưởng', 200000, 250000, 300, 300, CAST(0x392A0B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'008       ', N'Hồ Thị G', N'nữ', N'Nhân viên', N'Nhân viên', 120000, 150000, 200, 200, CAST(0x392A0B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'009       ', N'Bùi Thị Mai', N'nữ', N'Thư ký', N'Thư ký', 120000, 150000, 150, 200, CAST(0x392A0B00 AS Date), N'hoàng thành tốt nhiệm vụ')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0010      ', N'Đỗ Văn Bé', N'nam', N'Lái xe', N'Lái xe', 100000, 120000, 100, 150, CAST(0x392A0B00 AS Date), N'hoàn thành')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0011      ', N'Nguyễn Văn Đạt', N'nam', N'Phó GĐ', N'Phó GĐ', 300000, 350000, 300, 300, CAST(0x392A0B00 AS Date), N'hoàn thành dự án')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0012      ', N'Lê Bình Nam', N'nam', N'Nhân viên', N'Nhân viên', 150000, 180000, 200, 200, CAST(0x392A0B00 AS Date), N'hoàn thành tốt nhiệm vụ')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0013      ', N'Lê Thị C', N'nữ', N'Nhân viên', N'Nhân viên', 150000, 180000, 200, 250, CAST(0x392A0B00 AS Date), N'hoàn thành')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0014      ', N'Nguyễn Văn D', N'nam', N'Nhân viên', N'Nhân viên', 180000, 200000, 200, 250, CAST(0x392A0B00 AS Date), N'hoàn thành')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0015      ', N'Nguyễn Thị D', N'nữ', N'Nhân viên', N'Nhân viên', 150000, 200000, 300, 350, CAST(0x392A0B00 AS Date), N'hoàn thành tốt nhiệm vụ')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0016      ', N'Bùi Văn G', N'nam', N'Nhân viên', N'Nhân viên', 150000, 200000, 200, 250, CAST(0x392A0B00 AS Date), N'hoàn thành tốt nhiệm vụ')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0017      ', N'Hồ Thị Mơ', N'nữ', N'Quản đốc', N'Quản đốc', 200000, 220000, 250, 300, CAST(0xBA310B00 AS Date), N'hoàn thành tốt nhiệm vụ')
INSERT [dbo].[TblTangLuong] ([MaNV], [HoTen], [GioiTinh], [ChucVu], [ChucDanh], [LCBCu], [LCBMoi], [PCapCu], [PcapMoi], [NgayTang], [LyDo]) VALUES (N'0018      ', N'Nguyễn Văn H', N'nam', N'Nhân viên', N'Nhân viên', 150000, 180000, 200, 250, CAST(0xBA310B00 AS Date), N'hoàn thành dự án')
/****** Object:  Table [dbo].[TblSoBH]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblSoBH](
	[MaNV] [char](10) NOT NULL,
	[MaLuong] [char](10) NOT NULL,
	[MaSoBH] [char](10) NOT NULL,
	[NgayCapSo] [date] NULL,
	[NoiCapSo] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSoBH] PRIMARY KEY CLUSTERED 
(
	[MaSoBH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'002       ', N'ml02      ', N'ms02      ', CAST(0x3E310B00 AS Date), N'Hải Dương', N'gfgfgf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'003       ', N'ml03      ', N'ms03      ', CAST(0x3E310B00 AS Date), N'Nam Định', N'ggfgg')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'004       ', N'ml04      ', N'ms04      ', CAST(0x3E310B00 AS Date), N'Thái Nguyên', N'dfdfd')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'005       ', N'ml05      ', N'ms05      ', CAST(0x3E310B00 AS Date), N'Hà Nội', N'gfgfgf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'006       ', N'ml06      ', N'ms06      ', CAST(0x3E310B00 AS Date), N'Quảng Ninh', N'kgddf')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'007       ', N'ml07      ', N'ms07      ', CAST(0x3E310B00 AS Date), N'Thái Nguyên', N'lreyt')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'008       ', N'ml08      ', N'ms08      ', CAST(0x3E310B00 AS Date), N'Nam Định', N'jjhhh')
INSERT [dbo].[TblSoBH] ([MaNV], [MaLuong], [MaSoBH], [NgayCapSo], [NoiCapSo], [GhiChu]) VALUES (N'009       ', N'ml09      ', N'ms09      ', CAST(0x3E310B00 AS Date), N'Hải Dương', N'ggg')
/****** Object:  Table [dbo].[TblPhongBan]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblPhongBan](
	[MaBoPhan] [char](10) NOT NULL,
	[MaPhong] [char](10) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[NgayTLap] [date] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblPhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb01      ', N'mp01      ', N'marketing', CAST(0xFF150B00 AS Date), N'hoạt động marketing')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb05      ', N'mp010     ', N'kế toán', CAST(0x23170B00 AS Date), N'hoạt động kế toán')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb02      ', N'mp02      ', N'kế toán', CAST(0x3E160B00 AS Date), N'hoạt động kế toán')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb03      ', N'mp03      ', N'kinh doanh', CAST(0x1F160B00 AS Date), N'hoạt động kinh doanh')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb04      ', N'mp04      ', N'vật tư', CAST(0x1F160B00 AS Date), N'hoạt động vật tư')
INSERT [dbo].[TblPhongBan] ([MaBoPhan], [MaPhong], [TenPhong], [NgayTLap], [GhiChu]) VALUES (N'mb010     ', N'mp10      ', N'bảo vệ', CAST(0x00170B00 AS Date), N'trông nom công ty')
/****** Object:  Table [dbo].[TblBangCongThuViec]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblBangCongThuViec](
	[TenBoPhan] [nvarchar](10) NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaNV] [char](10) NOT NULL,
	[LuongTViec] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](10) NULL,
	[SoNgayCong] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Tài chính', N'Tài chính', N'001       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'Phòng tài chính thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Tài chính', N'Tài chính', N'002       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'Phòng tài chính thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Kế toán', N'Kế toán', N'003       ', 2000000, N'12        ', N'2008      ', 29, 2, 6, N'Thành công')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'004       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'012       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'07        ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'011       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Tài chính', N'Tài chính', N'015       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'Thành công')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'010       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'05        ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'0030      ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Phòng vật tư thiếu')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Vật tư', N'Vật tư', N'014       ', 2000000, N'12        ', N'2008      ', 29, 2, 5, N'Thành công')
INSERT [dbo].[TblBangCongThuViec] ([TenBoPhan], [TenPhong], [MaNV], [LuongTViec], [Thang], [Nam], [SoNgayCong], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'Tài chính', N'Tài chính', N'009       ', 2000000, N'12        ', N'2008      ', 28, 3, 8, N'Thành công')
/****** Object:  Table [dbo].[TblCongKhoiVanPHong]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanPHong](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [char](4) NULL,
	[PhuCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'001       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 2, 5, N'hfdrs')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'002       ', 2000000, N'300 ', 200, N'12        ', N'2008               ', 5, 1, 8, N'keke')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'003       ', 2000000, N'250 ', 200, N'12        ', N'2008               ', 5, 1, 7, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'004       ', 1800000, N'200 ', 100, N'12        ', N'2008               ', 4, 2, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, N'200 ', 100, N'12        ', N'2008               ', 6, 4, 4, N'fggfg')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, N'200 ', 150, N'12        ', N'2008               ', 4, 1, 6, N'gfdd')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, N'300 ', 200, N'5         ', N'2009               ', 8, 1, 8, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, N'250 ', 200, N'5         ', N'2009               ', 6, 3, 7, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, N'200 ', 100, N'5         ', N'2009               ', 4, 2, 7, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, N'300 ', 300, N'5         ', N'2009               ', 6, 2, 8, N'fhhgff')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, N'300 ', 200, N'5         ', N'2009               ', 5, 2, 6, N'ggbb')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, N'400 ', 100, N'5         ', N'2009               ', 6, 3, 8, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, N'200 ', 100, N'5         ', N'2009               ', 5, 3, 6, N'gvbnn')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800009, N'250 ', 100, N'5         ', N'2009               ', 4, 2, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanPHong] ([MaNV], [LCB], [PhuCapCVu], [PhuCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, N'200 ', 150, N'5         ', N'2009               ', 5, 3, 5, N'thành công')
/****** Object:  Table [dbo].[TblCongKhoiVanChuyen]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCongKhoiVanChuyen](
	[MaNV] [char](10) NULL,
	[LCB] [int] NULL,
	[PhuCapCVu] [int] NULL,
	[PCapKhac] [int] NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SOGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0016      ', 3000000, 400, 100, N'5         ', N'2009               ', 6, 3, 8, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'003       ', 1800000, 250, 200, N'12        ', N'2008               ', 5, 1, 6, N'fdfdd')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'004       ', 1500000, 200, 100, N'12        ', N'2008               ', 6, 3, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'005       ', 1500000, 200, 100, N'12        ', N'2008               ', 4, 2, 5, N'jhjk')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'006       ', 1500000, 200, 150, N'12        ', N'2008               ', 4, 1, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'007       ', 1500000, 300, 200, N'5         ', N'2009               ', 8, 1, 6, N'fgggh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'008       ', 1800000, 250, 200, N'5         ', N'2009               ', 6, 3, 7, N'jjjiuhy')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'009       ', 1800000, 200, 100, N'5         ', N'2009               ', 4, 2, 7, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0010      ', 2500000, 300, 300, N'5         ', N'2009               ', 6, 2, 8, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0011      ', 2500000, 300, 200, N'5         ', N'2009               ', 5, 2, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0012      ', 3000000, 400, 100, N'5         ', N'2009               ', 6, 3, 8, N'hjhjgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0013      ', 2000000, 250, 100, N'5         ', N'2009               ', 5, 3, 6, N'jkkgh')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0014      ', 1800009, 250, 100, N'5         ', N'2009               ', 4, 2, 6, N'thành công')
INSERT [dbo].[TblCongKhoiVanChuyen] ([MaNV], [LCB], [PhuCapCVu], [PCapKhac], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SOGioLamThem], [GhiChu]) VALUES (N'0015      ', 1800000, 200, 150, N'5         ', N'2009               ', 5, 3, 5, N'thành công')
/****** Object:  Table [dbo].[TblCongKhoiSanXuat]    Script Date: 01/13/2022 17:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCongKhoiSanXuat](
	[MaNV] [char](10) NOT NULL,
	[LCB] [int] NULL,
	[PHuCapCVu] [char](4) NULL,
	[Thang] [char](10) NULL,
	[Nam] [char](19) NULL,
	[SoNgayCongThang] [int] NULL,
	[SoNgayNghi] [int] NULL,
	[SoGioLamThem] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[MaPhong] [char](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'001       ', 1500000, N'200 ', N'12        ', N'2008               ', 4, 2, 5, N'gfgtyrt', N'mp01      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'002       ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'003       ', 1800000, N'250 ', N'12        ', N'2008               ', 5, 1, 6, N'bhgff', N'mp03      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'004       ', 1800000, N'250 ', N'12        ', N'2008               ', 4, 2, 6, N'jghgg', N'mp04      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'0023      ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'005       ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
INSERT [dbo].[TblCongKhoiSanXuat] ([MaNV], [LCB], [PHuCapCVu], [Thang], [Nam], [SoNgayCongThang], [SoNgayNghi], [SoGioLamThem], [GhiChu], [MaPhong]) VALUES (N'0090      ', 2000000, N'300 ', N'12        ', N'2008               ', 5, 1, 7, N'keke', N'mp02      ')
/****** Object:  ForeignKey [FK_TblCongKhoiDieuHanh_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblCongKhoiDieuHanh]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiDieuHanh] CHECK CONSTRAINT [FK_TblCongKhoiDieuHanh_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblTTCaNhan_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblTTCaNhan]  WITH NOCHECK ADD  CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblTTCaNhan] CHECK CONSTRAINT [FK_TblTTCaNhan_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblThaiSan_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblThaiSan]  WITH NOCHECK ADD  CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblThaiSan] CHECK CONSTRAINT [FK_TblThaiSan_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblTangLuong_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblTangLuong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblTangLuong] CHECK CONSTRAINT [FK_TblTangLuong_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblSoBH_TblBangLuongCTy]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblSoBH]  WITH CHECK ADD  CONSTRAINT [FK_TblSoBH_TblBangLuongCTy] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[TblBangLuongCTy] ([MaLuong])
GO
ALTER TABLE [dbo].[TblSoBH] CHECK CONSTRAINT [FK_TblSoBH_TblBangLuongCTy]
GO
/****** Object:  ForeignKey [FK_TblPhongBan_TblBoPhan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblPhongBan]  WITH CHECK ADD  CONSTRAINT [FK_TblPhongBan_TblBoPhan] FOREIGN KEY([MaBoPhan])
REFERENCES [dbo].[TblBoPhan] ([MaBophan])
GO
ALTER TABLE [dbo].[TblPhongBan] CHECK CONSTRAINT [FK_TblPhongBan_TblBoPhan]
GO
/****** Object:  ForeignKey [FK_TblBangCongThuViec_TblHoSoThuViec]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblBangCongThuViec]  WITH CHECK ADD  CONSTRAINT [FK_TblBangCongThuViec_TblHoSoThuViec] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblHoSoThuViec] ([MaNV])
GO
ALTER TABLE [dbo].[TblBangCongThuViec] CHECK CONSTRAINT [FK_TblBangCongThuViec_TblHoSoThuViec]
GO
/****** Object:  ForeignKey [FK_TblCongKhoiVanPHong_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblCongKhoiVanPHong]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanPHong] CHECK CONSTRAINT [FK_TblCongKhoiVanPHong_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblCongKhoiVanChuyen_TblTTNVCoBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblCongKhoiVanChuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TblTTNVCoBan] ([MaNV])
GO
ALTER TABLE [dbo].[TblCongKhoiVanChuyen] CHECK CONSTRAINT [FK_TblCongKhoiVanChuyen_TblTTNVCoBan]
GO
/****** Object:  ForeignKey [FK_TblCongKhoiSanXuat_TblPhongBan]    Script Date: 01/13/2022 17:33:49 ******/
ALTER TABLE [dbo].[TblCongKhoiSanXuat]  WITH CHECK ADD  CONSTRAINT [FK_TblCongKhoiSanXuat_TblPhongBan] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[TblPhongBan] ([MaPhong])
GO
ALTER TABLE [dbo].[TblCongKhoiSanXuat] CHECK CONSTRAINT [FK_TblCongKhoiSanXuat_TblPhongBan]
GO
