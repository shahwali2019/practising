<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="practising.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    <!-- 
        
        USE [collateral]
GO

/****** Object:  Table [dbo].[cust_userregister]    Script Date: 12/21/2021 1:16:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cust_userregister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](24) NOT NULL,
	[Access_role] [nvarchar](max) NOT NULL,
	[CreatedBy] [varchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_cust_userregister] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


-----------------------------------------------------------------------------------------------------------------
USE [collateral]
GO

/****** Object:  Table [dbo].[addnewcustomer]    Script Date: 12/21/2021 1:17:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[addnewcustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[اسم] [nvarchar](max) NULL,
	[fname] [nvarchar](max) NULL,
	[location] [nvarchar](max) NOT NULL,
	[haghulnashab] [nvarchar](max) NULL,
	[Given money] [nvarchar](max) NULL,
	[year] [nchar](10) NULL,
	[month] [nchar](10) NULL,
	[day] [nchar](10) NULL,
	[remain] [nvarchar](max) NULL,
	[notebook] [nvarchar](max) NULL,
 CONSTRAINT [PK_add new customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


--------------------------------------------------------------------------------------------
USE [collateral]
GO

/****** Object:  Table [dbo].[addnewcustomer_deleted]    Script Date: 12/21/2021 1:22:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[addnewcustomer_deleted](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[fname] [nvarchar](max) NULL,
	[location] [nvarchar](max) NOT NULL,
	[haghulnashab] [nvarchar](max) NULL,
	[Given money] [nvarchar](max) NULL,
	[year] [nchar](10) NULL,
	[month] [nchar](10) NULL,
	[day] [nchar](10) NULL,
	[remain] [nvarchar](max) NULL,
	[notebook] [nvarchar](max) NULL,
	[employees_name] [nvarchar](max) NULL,
	[Deleted at] [nvarchar](max) NULL,
 CONSTRAINT [PK_add_new_customer_deleted] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


-----------------------------------------------------------------------------procedure

USE [collateral]
GO

/****** Object:  StoredProcedure [dbo].[sp_deletelog_test]    Script Date: 12/21/2021 1:23:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE procedure  [dbo].[sp_deletelog_test]

(

@id int,

@employees_name varchar(255)

)

as

insert into addnewcustomer_deleted  

select [اسم]
      ,[fname]
      ,[location]
      ,[haghulnashab]
      ,[Given money]
      ,[year]
      ,[month]
      ,[day]
      ,[remain]
      ,[notebook],@employees_name,getdate() from addnewcustomer where id=@id

 

delete addnewcustomer where id=  @id

GO


-----------------------------------------------------------------
USE [collateral]
GO

/****** Object:  StoredProcedure [dbo].[SP_LAR_updated1]    Script Date: 12/21/2021 1:24:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO











CREATE procedure  [dbo].[SP_LAR_updated1]
(
		@Id int,  
		@Disbursementdate    varchar(max),  
		@Borrower          varchar(max),
		@CaseNumber	       varchar(max),
		@FacilityType      varchar(max),
		@facilityevent     varchar(max),
		@Ccy     	       varchar(max),
		@FacilityAmount    varchar(max),
		@HOCCApprovalDate  varchar(max),
		@CEO    	       varchar(max),
		@CFO    	       varchar(max),
		@BODRequirement    varchar(max),
		@BoDApprovalDate   varchar(max),
		@LutfullahRahmat   varchar(max),
		@HamidullahMohib   varchar(max),
		@HugoMinderhod 	   varchar(max),
		@RS                varchar(max),
		@SS 		       varchar(max),
		@MT      	        varchar(max),
		@AS                varchar(max),
		@FacilityStatus    varchar(max),
		@Remarks 	        varchar(max),
		@InsertedBy 	   varchar(max),
		@UpdatedBy	        varchar(max),
		@Approvedby	       varchar(max),
		@employees_name         varchar(max),
		@deleted_at         varchar(max)
)

as 

insert log_update1 
select Id,Disbursementdate,Borrower,CaseNumber,FacilityType,facilityevent,Ccy,FacilityAmount,HOCCApprovalDate,CEO,CFO,BODRequirement,
BoDApprovalDate,LutfullahRahmat,HamidullahMohib,HugoMinderhod,RS,SS,MT,[AS],FacilityStatus ,Remarks,[Inserted By],
[Updated By],[Approved By],@employees_name,getdate() from LAR where Id=@id

UPDATE LAR SET Disbursementdate = @Disbursementdate,Borrower =@Borrower,CaseNumber =@CaseNumber,FacilityType = @FacilityType,facilityevent = @facilityevent,Ccy =@Ccy,FacilityAmount = @FacilityAmount, HOCCApprovalDate = @HOCCApprovalDate,CEO =@CEO,CFO = @CFO, BODRequirement =@BODRequirement,BoDApprovalDate =@BoDApprovalDate,LutfullahRahmat =@LutfullahRahmat,HamidullahMohib =@HamidullahMohib,HugoMinderhod =@HugoMinderhod,RS =@RS,SS =@SS,MT = @MT,[AS] =@AS,FacilityStatus =@FacilityStatus,Remarks = @Remarks,[Inserted By] =@InsertedBy, [Updated By] =@UpdatedBy ,[Approved By] =@Approvedby  WHERE Id = @id

GO


------------------------------------------
USE [collateral]
GO

/****** Object:  StoredProcedure [dbo].[SP_LAR_updated]    Script Date: 12/21/2021 1:25:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO










CREATE procedure  [dbo].[SP_LAR_updated]
(
		@Id int,  
		@Disbursementdate    varchar(max),  
		@Borrower          varchar(max),
		@CaseNumber	       varchar(max),
		@FacilityType      varchar(max),
		@facilityevent     varchar(max),
		@Ccy     	       varchar(max),
		@FacilityAmount    varchar(max),
		@HOCCApprovalDate  varchar(max),
		@CEO    	       varchar(max),
		@CFO    	       varchar(max),
		@BODRequirement    varchar(max),
		@BoDApprovalDate   varchar(max),
		@LutfullahRahmat   varchar(max),
		@HamidullahMohib   varchar(max),
		@HugoMinderhod 	   varchar(max),
		@RS                varchar(max),
		@SS 		       varchar(max),
		@MT      	        varchar(max),
		@AS                varchar(max),
		@FacilityStatus    varchar(max),
		@Remarks 	        varchar(max),
		@InsertedBy 	   varchar(max),
		@UpdatedBy	        varchar(max),
		@Approvedby	       varchar(max),
		@employees_name         varchar(max),
		@deleted_at         varchar(max)
)

as 

insert log_update 
select Disbursementdate,Borrower,CaseNumber,FacilityType,facilityevent,Ccy,FacilityAmount,HOCCApprovalDate,CEO,CFO,BODRequirement,
BoDApprovalDate,LutfullahRahmat,HamidullahMohib,HugoMinderhod,RS,SS,MT,[AS],FacilityStatus ,Remarks,[Inserted By],
[Updated By],[Approved By],@employees_name,getdate() from LAR where Id=@id

UPDATE LAR SET Disbursementdate = @Disbursementdate,Borrower =@Borrower,CaseNumber =@CaseNumber,FacilityType = @FacilityType,facilityevent = @facilityevent,Ccy =@Ccy,FacilityAmount = @FacilityAmount, HOCCApprovalDate = @HOCCApprovalDate,CEO =@CEO,CFO = @CFO, BODRequirement =@BODRequirement,BoDApprovalDate =@BoDApprovalDate,LutfullahRahmat =@LutfullahRahmat,HamidullahMohib =@HamidullahMohib,HugoMinderhod =@HugoMinderhod,RS =@RS,SS =@SS,MT = @MT,[AS] =@AS,FacilityStatus =@FacilityStatus,Remarks = @Remarks,[Inserted By] =@InsertedBy, [Updated By] =@UpdatedBy ,[Approved By] =@Approvedby  WHERE Id = @id

GO



        -->
</asp:Content>
