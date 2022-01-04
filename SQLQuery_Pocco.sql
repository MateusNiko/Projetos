--################################### SCHEMA ###################################################################################################
--drop schema if exists  pocco_mateus_nikolofski;

--create SCHEMA pocco_mateus_nikolofski;

--################################### Table Stage ###############################################################################################
--drop table pocco_mateus_nikolofski.stage_mateus_nikolofski;

-- create table pocco_mateus_nikolofski.stage_mateus_nikolofski(
--     [Region] varchar(200),
--     [Country] varchar(200),
--     [Item Type] varchar(200),
--     [Sales Channel] varchar(200),
--     [Order Priority] varchar(200),
--     [Order Date] varchar(200),
--     [Order ID] varchar(200),
--     [Ship Date] varchar(200),
--     [Units Sold] varchar(200),
--     [Unit Price] varchar(200),
--     [Unit Cost] varchar(200),
--     [Total Revenue] varchar(200),
--     [Total Cost] varchar(200),
--     [Total Profit] varchar(200)

-- );

--################################### Table DW ###############################################################################################

--drop table pocco_mateus_nikolofski.dw_mateus_nikolofski;

-- create table pocco_mateus_nikolofski.dw_mateus_nikolofski(
--     [Region] varchar(200) not null,
--     [Country] varchar(200) not null,
--     [Item Type] varchar(200) not null,
--     [Sales Channel] varchar(200) not null,
--     [Order Priority] varchar(200) not null,
--     [Order Date] date not null,
--     [Order ID] int primary key not null,
--     [Ship Date] date not null,
--     [Units Sold] int not null,
--     [Unit Price] float not null,
--     [Unit Cost] float not null,
--     [Total Revenue] float not null,
--     [Total Cost] float not null,
--     [Total Profit] float not null

-- );

--################################### Dimensions and Fact ###############################################################################################

    -- create table pocco_mateus_nikolofski.DimRegion_mateus_nikolofski(
    --     RegionID int primary key IDENTITY(1, 1) not null,
    --     Region varchar(200) not null
    -- )

    -- create table pocco_mateus_nikolofski.DimCountry_mateus_nikolofski(
    --     CountryID int primary key IDENTITY(1, 1) not null,
    --     Country varchar(200) not null


    -- )

    -- create table pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski(
    --     SalesChannelID int primary key IDENTITY(1, 1) not null,
    --     SalesChannel varchar(200) not null
    -- )

    -- create table pocco_mateus_nikolofski.FactSales_mateus_nikolofski(
    --     OrderID int primary key not null,
    --     OrderDate date not null,
    --     UnitsSold int not null,
    --     UnitPrice decimal(20,2) not null,
    --     TotalRevenue decimal(20,2) not null,
    --     SalesChannelID int not null,
    --     CountryID int not null,
    --     RegionId int not null,
    --     foreign key(SalesChannelID) references pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski(salesChannelID),
    --     foreign key(CountryID) references pocco_mateus_nikolofski.DimCountry_mateus_nikolofski,
    --     foreign key(RegionId) references pocco_mateus_nikolofski.DimRegion_mateus_nikolofski(RegionID)

    -- )
    


--################################### procedure pocco_enviar_dados_stage_para_dw_mateus_nikolofski ###########################################################################

--mdrop procedure pocco_enviar_dados_stage_para_dw_mateus_nikolofski;
-- exec  pocco_enviar_dados_stage_para_dw_mateus_nikolofski;
-- create procedure pocco_enviar_dados_stage_para_dw_mateus_nikolofski
-- as
-- begin
--     insert into [pocco_mateus_nikolofski].[dw_mateus_nikolofski] ([Region]
--       ,[Country]
--       ,[Item Type]
--       ,[Sales Channel]
--       ,[Order Priority]
--       ,[Order Date]
--       ,[Order ID]
--       ,[Ship Date]
--       ,[Units Sold]
--       ,[Unit Price]
--       ,[Unit Cost]
--       ,[Total Revenue]
--       ,[Total Cost]
--       ,[Total Profit])
    -- select [Region]
    --   ,[Country]
    --   ,[Item Type]
    --   ,[Sales Channel]
    --   ,[Order Priority]
    --   ,[Order Date]
    --   ,[Order ID]
    --   ,[Ship Date]
    --   ,[Units Sold]
    --   ,[Unit Price]
    --   ,[Unit Cost]
    --   ,[Total Revenue]
    --   ,[Total Cost]
    --   ,[Total Profit] from [pocco_mateus_nikolofski].[stage_mateus_nikolofski]

-- end;




--################################### procedure pocco_limpar_tabelas_mateus_nikolofski ###########################################################################

--select * from pocco_mateus_nikolofski.FactSales_mateus_nikolofski;

--delete [pocco_mateus_nikolofski.FactSales_mateus_nikolofski];

-- drop procedure pocco_limpar_tabelas_mateus_nikolofski;
--exec pocco_limpar_tabelas_mateus_nikolofski;
-- create procedure pocco_limpar_tabelas_mateus_nikolofski
-- as
-- begin

--     truncate table pocco_mateus_nikolofski.dw_mateus_nikolofski
--     truncate table pocco_mateus_nikolofski.stage_mateus_nikolofski
--     delete pocco_mateus_nikolofski.FactSales_mateus_nikolofski
--     delete pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski], RESEED, 0);
--     delete pocco_mateus_nikolofski.DimCountry_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimCountry_mateus_nikolofski], RESEED, 0);
--     delete pocco_mateus_nikolofski.DimRegion_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimRegion_mateus_nikolofski], RESEED, 0);



-- end;


--################################### pocco_limpar_tabelas_ e_enviar_dados_stage_para_dim_fatc_dw_mateus_nikolofski ###########################################################################

--drop pocco_limpar_tabelas_e_enviar_dados_stage_para_dim_fatc_dw_mateus_nikolofski;
--exec pocco_limpar_tabelas_e_enviar_dados_stage_para_dim_fatc_dw_mateus_nikolofski;
-- create procedure pocco_limpar_tabelas_e_enviar_dados_stage_para_dim_fatc_dw_mateus_nikolofski
-- as 
-- BEGIN

--     truncate table pocco_mateus_nikolofski.dw_mateus_nikolofski
--     delete pocco_mateus_nikolofski.FactSales_mateus_nikolofski
--     delete pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski], RESEED, 0);
--     delete pocco_mateus_nikolofski.DimCountry_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimCountry_mateus_nikolofski], RESEED, 0);
--     delete pocco_mateus_nikolofski.DimRegion_mateus_nikolofski
--     DBCC CHECKIDENT ([pocco_mateus_nikolofski.DimRegion_mateus_nikolofski], RESEED, 0);

-- insert into [pocco_mateus_nikolofski].[dw_mateus_nikolofski] ([Region]
--       ,[Country]
--       ,[Item Type]
--       ,[Sales Channel]
--       ,[Order Priority]
--       ,[Order Date]
--       ,[Order ID]
--       ,[Ship Date]
--       ,[Units Sold]
--       ,[Unit Price]
--       ,[Unit Cost]
--       ,[Total Revenue]
--       ,[Total Cost]
--       ,[Total Profit])
--     select [Region]
--       ,[Country]
--       ,[Item Type]
--       ,[Sales Channel]
--       ,[Order Priority]
--       ,[Order Date]
--       ,[Order ID]
--       ,[Ship Date]
--       ,[Units Sold]
--       ,[Unit Price]
--       ,[Unit Cost]
--       ,[Total Revenue]
--       ,[Total Cost]
--       ,[Total Profit] from [pocco_mateus_nikolofski].[stage_mateus_nikolofski]
    


--     insert into pocco_mateus_nikolofski.DimRegion_mateus_nikolofski
--     select [Region] from pocco_mateus_nikolofski.stage_mateus_nikolofski
--     group by Region
--     order by Region asc; 


--     insert into pocco_mateus_nikolofski.DimCountry_mateus_nikolofski
--     select distinct s.Country from pocco_mateus_nikolofski.stage_mateus_nikolofski s 
--     order by s.Country asc;

--     insert into pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski
--     select [Sales Channel] from pocco_mateus_nikolofski.stage_mateus_nikolofski
--     group by [Sales Channel]
--     order by [Sales Channel] asc;

--     insert into pocco_mateus_nikolofski.FactSales_mateus_nikolofski (OrderID, OrderDate, UnitsSold, UnitPrice, TotalRevenue, SalesChannelID, CountryID, RegionID) 
--     select t.[Order ID], 
--     convert(date, t.[Order Date]), 
--     convert(int,t.[Units Sold]), 
--     convert(decimal(20,2), convert(float, t.[Unit Price])),
--     convert(decimal(20,2),convert(float, t.[Total Revenue])),
--     convert(int,s.SalesChannelID), 
--     convert(int,c.CountryID),
--     convert(int, r.RegionID)
--     from pocco_mateus_nikolofski.stage_mateus_nikolofski t
--     join pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski s on s.SalesChannel = t.[Sales Channel]
--     join pocco_mateus_nikolofski.DimCountry_mateus_nikolofski c on c.Country = t.[Country]
--     join pocco_mateus_nikolofski.DimRegion_mateus_nikolofski r on r.Region = t.[Region]
--     order by t.[Order ID] asc;
--     truncate table pocco_mateus_nikolofski.stage_mateus_nikolofski


-- end;

--################################### Prototypes of inserts ###########################################################################

--exec sp_help [pocco_mateus_nikolofski.stage_mateus_nikolofski];

--select * from pocco_mateus_nikolofski.DimRegion_mateus_nikolofski;
-- insert into pocco_mateus_nikolofski.DimRegion_mateus_nikolofski
-- select [Region] from pocco_mateus_nikolofski.stage_mateus_nikolofski
-- group by Region
-- order by Region asc;


--select * from pocco_mateus_nikolofski.DimCountry_mateus_nikolofski;
-- insert into pocco_mateus_nikolofski.DimCountry_mateus_nikolofski
-- select distinct s.Country from pocco_mateus_nikolofski.stage_mateus_nikolofski s 
-- order by s.Country asc;


-- select * from pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski
-- insert into pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski
-- select [Sales Channel] from pocco_mateus_nikolofski.stage_mateus_nikolofski
-- group by [Sales Channel]
-- order by [Sales Channel] asc;


--truncate table pocco_mateus_nikolofski.FactSales_mateus_nikolofski;
-- select * from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- insert into pocco_mateus_nikolofski.FactSales_mateus_nikolofski (OrderID, OrderDate, UnitsSold, UnitPrice, TotalRevenue, SalesChannelID, CountryID, RegionID) 
-- select t.[Order ID], 
-- convert(date, t.[Order Date]), 
-- convert(int,t.[Units Sold]), 
-- convert(decimal(20,2), convert(float, t.[Unit Price])),
-- convert(decimal(20,2),convert(float, t.[Total Revenue])),
-- convert(int,s.SalesChannelID), 
-- convert(int,c.CountryID),
-- convert(int, r.RegionID)
-- from pocco_mateus_nikolofski.stage_mateus_nikolofski t
-- join pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski s on s.SalesChannel = t.[Sales Channel]
-- join pocco_mateus_nikolofski.DimCountry_mateus_nikolofski c on c.Country = t.[Country]
-- join pocco_mateus_nikolofski.DimRegion_mateus_nikolofski r on r.Region = t.[Region]
-- order by t.[Order ID] asc;

--################################### Test Area ###########################################################################

-- select Country from pocco_mateus_nikolofski.stage_mateus_nikolofski 
-- group by Country;

--EXEC sp_help 'pocco_mateus_nikolofski.dw_mateus_nikolofski';
-- EXEC sp_help 'pocco_mateus_nikolofski.stage_mateus_nikolofski';
-- select * from [pocco_mateus_nikolofski].[stage_mateus_nikolofski];
--select sum([Unit Cost]) from [pocco_mateus_nikolofski].[dw_mateus_nikolofski];
--select count(*) from [pocco_mateus_nikolofski].[stage_mateus_nikolofski];
--select count(*) from [pocco_mateus_nikolofski].[dw_mateus_nikolofski];
-- truncate table [pocco_mateus_nikolofski].[stage_mateus_nikolofski];

-- select * from pocco_mateus_nikolofski.stage_mateus_nikolofski 
-- where [Region] = null or [Country] = null or [Item Type] = null or [Sales Channel] = null or [Order Priority] = null or [Order Date] = null or  [Ship Date] = null
-- or [Units Sold] = null or [Unit Price] = null or [Unit Cost] = null or [Total Revenue] = null or [Total Cost] = null or [Total Profit] = null;*

--truncate table pocco_mateus_nikolofski.dw_mateus_nikolofski;

--exec pocco_enviar_dados_stage_para_dw_mateus_nikolofski;
--select * from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderId = 100089156;

-- select Country from pocco_mateus_nikolofski.DimCountry_mateus_nikolofski
-- where CountryID = 45;

-- select Region from pocco_mateus_nikolofski.DimRegion_mateus_nikolofski
-- where RegionID = 5;

-- select * from pocco_mateus_nikolofski.dw_mateus_nikolofski
-- where [Order Id] = 100089156;
--Egypt 45 Middle East and North Africa 5
--select * from pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski;
--select * from pocco_mateus_nikolofski.FactSales_mateus_nikolofski

--select Region from pocco_mateus_nikolofski.stage_mateus_nikolofski;

--select ([Order ID]) from pocco_mateus_nikolofski.stage_mateus_nikolofski
-- where [Region] = 'Europe';


-- select * from pocco_mateus_nikolofski.stage_mateus_nikolofski
-- where [Order Date] = '2017-07-28';

-- ############################################# Acumulado Código #####################################################################################3

-- select 
-- DiaVenda,
-- QuantidadeVendida,
-- sum(QuantidadeVendida)
-- over (PARTITION by month(DiaVenda) order by DiaVenda) as acumuladoQuantidadeVendida,
-- TotalVendas,
-- sum(TotalVendas)
-- over (PARTITION by month(DiaVenda) order by DiaVenda) as acumuladoTotalVendas
-- from
-- (
-- select OrderDate as DiaVenda,
-- count(UnitsSold) as [QuantidadeVendida],
-- sum(UnitPrice) as [TotalVendas]
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderDate BETWEEN '2010-01-01' and '2017-07-28'
-- group by OrderDate

-- ) as agregado;

-- 2010-01-01
-- 2017-07-28



--######################################################### Acumulado Venda Todo Período ###############################################################################

-- select 
-- DiaVenda,
-- TotalRevenue,
-- sum(TotalRevenue)
-- over (PARTITION by month(DiaVenda) order by DiaVenda) as acumuladoVenda
-- from
-- (
-- select OrderDate as DiaVenda,
-- sum(TotalRevenue) as [TotalRevenue]
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderDate BETWEEN '2010-01-01' and '2017-07-28'
-- group by OrderDate

-- ) as agregado;

-- select sum([Total Revenue]) from pocco_mateus_nikolofski.dw_mateus_nikolofski
-- where Country = 'Russia';



--######################################################### Acumulado Venda Todo Período ###############################################################################
-- select 
-- DiaVenda,
-- TotalRevenue,
-- sum(TotalRevenue)
-- over (PARTITION by month(DiaVenda) order by DiaVenda) as acumuladoVenda
-- from
-- (
-- select OrderDate as DiaVenda,
-- sum(TotalRevenue) as [TotalRevenue]
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderDate BETWEEN '2010-01-01' and '2017-07-28'

-- group by OrderDate

-- ) as agregado;

--######################################################### Acumulado Venda Um Ano com países e Regiões #################################################################



-- select TotalRevenue, c.Country
-- from
-- (select 
-- sum(f.TotalRevenue) as [TotalRevenue],
-- f.CountryID
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski f
-- --where OrderDate >= (DATEADD(year, -1, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- where year(f.OrderDate) = '2017'
-- group by f.CountryID
-- ) as test
-- join pocco_mateus_nikolofski.DimCountry_mateus_nikolofski c on c.CountryID = test.CountryID;


-- select TotalRevenue, r.Region
-- from
-- (select 
-- sum(f.TotalRevenue) as [TotalRevenue],
-- f.RegionID
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski f 
-- --where OrderDate >= (DATEADD(year, -1, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- where year(f.OrderDate) = 2017
-- group by f.RegionID) as test
-- join pocco_mateus_nikolofski.DimRegion_mateus_nikolofski r on r.RegionID = test.RegionID;


--#########################################################  Venda Últimos 10 dias #################################################################

-- Unidades Vendidas 
-- select sum(UnitsSold) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderDate >= (DATEADD(day, -9, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))

--Faturamento cada dia
-- select sum(TotalRevenue), OrderDate from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- where OrderDate >= (DATEADD(day, -9, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- group by OrderDate;



--  --#########################################################  Vendas e Vendas Acumuladas Últimos 30 dias #################################################################
 


-- select 
-- DiaVenda,
-- TotalRevenue,
-- sum(TotalRevenue)
-- over (PARTITION by year(DiaVenda) order by DiaVenda) as acumuladoVenda
-- from
-- (
-- select OrderDate as DiaVenda,
-- sum(TotalRevenue) as [TotalRevenue]
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski
-- WHERE OrderDate >= (DATEADD(DAY, -29, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))


-- group by OrderDate

-- ) as agregado;

--170797255.60
--180352668.76
--#########################################################  Vendas Acumuladas Canal e País Último Ano #############################################


--Somente com Sales Channel
-- select TotalRevenue, s.SalesChannel

-- from

-- (select 

-- sum(f.TotalRevenue) as [TotalRevenue],

-- f.SalesChannelID

-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski f

-- --where OrderDate >= (DATEADD(year, -1, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- where OrderDate = '2017'
-- group by f.SalesChannelID

-- ) as test

-- join pocco_mateus_nikolofski.DimSalesChannel_mateus_nikolofski s on s.SalesChannelID = test.SalesChannelID;


--Com países e Sales Channel 1 Offline
-- select TotalRevenue, c.Country 
-- from
-- (select 
-- sum(f.TotalRevenue) as [TotalRevenue], f.CountryID
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski f
-- --where OrderDate >= (DATEADD(year, -1, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- where year(f.OrderDate) = '2017'
-- and SalesChannelID = 1
-- group by f.CountryID) as test
-- join pocco_mateus_nikolofski.DimCountry_mateus_nikolofski c on c.CountryID = test.CountryID; 


-- Com países e Sales Channel 2 Online
-- select TotalRevenue, c.Country 
-- from
-- (select 
-- sum(f.TotalRevenue) as [TotalRevenue], f.CountryID
-- from pocco_mateus_nikolofski.FactSales_mateus_nikolofski f
-- --where OrderDate >= (DATEADD(year, -1, (select max(OrderDate) from pocco_mateus_nikolofski.FactSales_mateus_nikolofski)))
-- where year(f.OrderDate) = '2017'
-- and SalesChannelID = 2
-- group by f.CountryID) as test
-- join pocco_mateus_nikolofski.DimCountry_mateus_nikolofski c on c.CountryID = test.CountryID; 









