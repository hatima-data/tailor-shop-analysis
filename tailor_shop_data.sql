create table tailor_shop (
					   Order_ID int primary key,                
					   Date date,                    
					   DueDate  date,                
					   GarmentType varchar,             
					   Material varchar,                
					   Cost decimal,                   
					   Status  varchar,                 
					   Chest   decimal,                
					   Arm_Length decimal,              
					   Shoulder decimal,                
					   Armscye decimal,                 
					   Neck_Size decimal,               
					   Back_Width decimal,               
					   Waist decimal,                   
					   Front_Shoulder_to_Waist  decimal,
					   Hip decimal,                     
					   Waist_to_Knee decimal,           
					   Crotch_Depth  decimal,           
					   Body_Rise decimal,               
					   Waist_to_Floor decimal,
					   Nape_to_Waist decimal,
					   Bust decimal
					);

select *from tailor_shop

select
	GarmentType,
	count(*) from tailor_shop
	group by GarmentType;

select
	garmentType,
	count(*),
	sum(cost)
	from tailor_shop
	group by garmentType;

select 
	material,
	max(cost)
	from tailor_shop
	group by material;

select 
	material,
	min(cost)
	from tailor_shop
	group by material;

select 
	material,
	round(avg(cost), 2)
	from tailor_shop
	group by material;
	
select 
	material,
	sum(cost)
	from tailor_shop
	group by material;

select 
	status 
	from tailor_shop
	where status='Cutting';

select
	sum(cost)
	from tailor_shop;

select 
	garmenttype,
	sum(cost)
	from tailor_shop
	group by garmenttype
	order by sum(cost) desc limit 3;

select
	garmenttype,
	material,
	count(*)
	from tailor_shop
	group by garmenttype, material;

select
	garmenttype,
	material,
	status,
	round(avg(cost), 2)
	from tailor_shop
	group by garmenttype,material,status
	having round(avg(cost), 2)>250;

select
	order_id,
	garmenttype,
	duedate-date as days_difference
	from tailor_shop;

select 
	garmenttype,
	material,
	status,
	cost
	from tailor_shop
	where cost>(select avg(cost) from tailor_shop);

select
	cost,
		case
		when cost<200 then 'Cheap'
		when cost between 200 and 400 then 'Medium'
		when cost >400 then 'Expencive'
		end as cost_category
	from tailor_shop;
	
	
	