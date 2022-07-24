create extension if not exists "uuid-ossp";

create table products (
	id uuid not null default uuid_generate_v4() primary key,
	title text not null ,
	description text ,
	price integer
);

create table stocks (
	count integer not null
);

-- crear llave foranea de stocks a products
alter table stocks add column product_id uuid references products(id);



-- INSERT PRODUCTS

insert into products (description, title , price ) values ( 'Synergistic Wooden Computer',  'Synergistic Wooden Computer', 60.15 );
insert into products (description, title , price ) values ( 'Incredible Rubber Watch',  'Incredible Rubber Watch', 50.27 );
insert into products (description, title , price ) values ( 'Intelligent Linen Car',  'Intelligent Linen Car', 16.87 );
insert into products (description, title , price ) values ( 'Intelligent Linen Table',  'Intelligent Linen Table', 20.34 );
insert into products (description, title , price ) values ( 'Ergonomic Bronze Wallet',  'Ergonomic Bronze Wallet', 59.83 );
insert into products (description, title , price ) values ( 'Awesome Silk Hat',  'Awesome Silk Hat', 71.43 );
insert into products (description, title , price ) values ( 'Ergonomic Plastic Bottle',  'Ergonomic Plastic Bottle', 15.47 );
insert into products (description, title , price ) values ( 'Awesome Rubber Coat',  'Awesome Rubber Coat', 62.53 );
insert into products (description, title , price ) values ( 'Mediocre Aluminum Coat',  'Mediocre Aluminum Coat', 35.48 );
insert into products (description, title , price ) values ( 'Incredible Copper Bench',  'Incredible Copper Bench', 40.49 );
insert into products (description, title , price ) values ( 'Sleek Granite Car',  'Sleek Granite Car', 43.8 );
insert into products (description, title , price ) values ( 'Intelligent Copper Knife',  'Intelligent Copper Knife', 86.56 );
insert into products (description, title , price ) values ( 'Ergonomic Leather Wallet',  'Ergonomic Leather Wallet', 21.44 );
insert into products (description, title , price ) values ( 'Awesome Leather Clock',  'Awesome Leather Clock', 16.19 );
insert into products (description, title , price ) values ( 'Aerodynamic Steel Keyboard',  'Aerodynamic Steel Keyboard', 37.73 );
insert into products (description, title , price ) values ( 'Aerodynamic Cotton Bench',  'Aerodynamic Cotton Bench', 56.09 );
insert into products (description, title , price ) values ( 'Durable Cotton Knife',  'Durable Cotton Knife', 7.41 );
insert into products (description, title , price ) values ( 'Gorgeous Silk Bottle',  'Gorgeous Silk Bottle', 55.47 );
insert into products (description, title , price ) values ( 'Aerodynamic Marble Bottle',  'Aerodynamic Marble Bottle', 97.89 );
insert into products (description, title , price ) values ( 'Gorgeous Wool Hat',  'Gorgeous Wool Hat', 45.34 );
insert into products (description, title , price ) values ( 'Incredible Leather Clock',  'Incredible Leather Clock', 35.82 );
insert into products (description, title , price ) values ( 'Practical Plastic Bag',  'Practical Plastic Bag', 24.81 );
insert into products (description, title , price ) values ( 'Sleek Linen Knife',  'Sleek Linen Knife', 96.23 );
insert into products (description, title , price ) values ( 'Ergonomic Rubber Shirt',  'Ergonomic Rubber Shirt', 20.47 );
insert into products (description, title , price ) values ( 'Heavy Duty Iron Plate',  'Heavy Duty Iron Plate', 67.81 );
insert into products (description, title , price ) values ( 'Small Wool Bench',  'Small Wool Bench', 80.8 );
insert into products (description, title , price ) values ( 'Gorgeous Linen Shirt',  'Gorgeous Linen Shirt', 39.83 );
insert into products (description, title , price ) values ( 'Practical Granite Hat',  'Practical Granite Hat', 62.35 );
insert into products (description, title , price ) values ( 'Intelligent Iron Plate',  'Intelligent Iron Plate', 82.39 );
insert into products (description, title , price ) values ( 'Fantastic Leather Plate',  'Fantastic Leather Plate', 85.63 );
insert into products (description, title , price ) values ( 'Fantastic Iron Bottle',  'Fantastic Iron Bottle', 78.26 );
insert into products (description, title , price ) values ( 'Aerodynamic Bronze Shoes',  'Aerodynamic Bronze Shoes', 36.58 );
insert into products (description, title , price ) values ( 'Fantastic Bronze Shirt',  'Fantastic Bronze Shirt', 18.37 );
insert into products (description, title , price ) values ( 'Mediocre Paper Pants',  'Mediocre Paper Pants', 82.0 );
insert into products (description, title , price ) values ( 'Intelligent Leather Bag',  'Intelligent Leather Bag', 89.22 );
insert into products (description, title , price ) values ( 'Lightweight Aluminum Coat',  'Lightweight Aluminum Coat', 85.68 );
insert into products (description, title , price ) values ( 'Small Copper Coat',  'Small Copper Coat', 89.09 );
insert into products (description, title , price ) values ( 'Practical Wooden Plate',  'Practical Wooden Plate', 22.03 );
insert into products (description, title , price ) values ( 'Heavy Duty Bronze Bottle',  'Heavy Duty Bronze Bottle', 95.65 );
insert into products (description, title , price ) values ( 'Aerodynamic Silk Table',  'Aerodynamic Silk Table', 68.11 );
insert into products (description, title , price ) values ( 'Incredible Marble Watch',  'Incredible Marble Watch', 19.21 );
insert into products (description, title , price ) values ( 'Rustic Steel Pants',  'Rustic Steel Pants', 62.39 );
insert into products (description, title , price ) values ( 'Mediocre Plastic Table',  'Mediocre Plastic Table', 83.09 );
insert into products (description, title , price ) values ( 'Practical Plastic Clock',  'Practical Plastic Clock', 82.86 );
insert into products (description, title , price ) values ( 'Durable Paper Knife',  'Durable Paper Knife', 54.12 );
insert into products (description, title , price ) values ( 'Enormous Aluminum Keyboard',  'Enormous Aluminum Keyboard', 48.99 );
insert into products (description, title , price ) values ( 'Lightweight Aluminum Computer',  'Lightweight Aluminum Computer', 46.03 );
insert into products (description, title , price ) values ( 'Incredible Aluminum Car',  'Incredible Aluminum Car', 58.1 );
insert into products (description, title , price ) values ( 'Lightweight Granite Chair',  'Lightweight Granite Chair', 16.75 );
insert into products (description, title , price ) values ( 'Durable Wooden Bench',  'Durable Wooden Bench', 86.21 );
insert into products (description, title , price ) values ( 'Durable Wool Gloves',  'Durable Wool Gloves', 72.91 );
insert into products (description, title , price ) values ( 'Rustic Silk Bag',  'Rustic Silk Bag', 24.23 );
insert into products (description, title , price ) values ( 'Rustic Bronze Coat',  'Rustic Bronze Coat', 23.93 );
insert into products (description, title , price ) values ( 'Enormous Concrete Watch',  'Enormous Concrete Watch', 21.4 );
insert into products (description, title , price ) values ( 'Lightweight Steel Shoes',  'Lightweight Steel Shoes', 51.9 );
insert into products (description, title , price ) values ( 'Heavy Duty Silk Plate',  'Heavy Duty Silk Plate', 31.48 );
insert into products (description, title , price ) values ( 'Practical Plastic Bottle',  'Practical Plastic Bottle', 27.31 );
insert into products (description, title , price ) values ( 'Lightweight Plastic Keyboard',  'Lightweight Plastic Keyboard', 78.14 );
insert into products (description, title , price ) values ( 'Incredible Wooden Table',  'Incredible Wooden Table', 9.11 );
insert into products (description, title , price ) values ( 'Rustic Plastic Knife',  'Rustic Plastic Knife', 36.13 );
insert into products (description, title , price ) values ( 'Mediocre Marble Hat',  'Mediocre Marble Hat', 10.26 );
insert into products (description, title , price ) values ( 'Lightweight Plastic Computer',  'Lightweight Plastic Computer', 33.21 );
insert into products (description, title , price ) values ( 'Mediocre Linen Watch',  'Mediocre Linen Watch', 18.06 );
insert into products (description, title , price ) values ( 'Synergistic Steel Knife',  'Synergistic Steel Knife', 37.84 );
insert into products (description, title , price ) values ( 'Gorgeous Wooden Table',  'Gorgeous Wooden Table', 3.13 );
insert into products (description, title , price ) values ( 'Lightweight Wool Bench',  'Lightweight Wool Bench', 89.81 );
insert into products (description, title , price ) values ( 'Incredible Steel Keyboard',  'Incredible Steel Keyboard', 23.88 );
insert into products (description, title , price ) values ( 'Awesome Marble Keyboard',  'Awesome Marble Keyboard', 60.37 );
insert into products (description, title , price ) values ( 'Sleek Granite Keyboard',  'Sleek Granite Keyboard', 72.76 );
insert into products (description, title , price ) values ( 'Durable Steel Coat',  'Durable Steel Coat', 8.97 );
insert into products (description, title , price ) values ( 'Ergonomic Cotton Wallet',  'Ergonomic Cotton Wallet', 46.76 );
insert into products (description, title , price ) values ( 'Small Leather Car',  'Small Leather Car', 9.94 );
insert into products (description, title , price ) values ( 'Small Granite Pants',  'Small Granite Pants', 9.79 );
insert into products (description, title , price ) values ( 'Sleek Wooden Bag',  'Sleek Wooden Bag', 24.91 );
insert into products (description, title , price ) values ( 'Incredible Plastic Watch',  'Incredible Plastic Watch', 68.59 );
insert into products (description, title , price ) values ( 'Ergonomic Concrete Wallet',  'Ergonomic Concrete Wallet', 65.59 );
insert into products (description, title , price ) values ( 'Ergonomic Leather Hat',  'Ergonomic Leather Hat', 2.97 );
insert into products (description, title , price ) values ( 'Mediocre Steel Coat',  'Mediocre Steel Coat', 35.2 );
insert into products (description, title , price ) values ( 'Incredible Iron Plate',  'Incredible Iron Plate', 39.2 );
insert into products (description, title , price ) values ( 'Aerodynamic Iron Shirt',  'Aerodynamic Iron Shirt', 41.39);




-- INSERT STOCKS
insert into stocks (product_id , "count" ) values ( '9465e81a-f45c-4c49-b155-5ef58ca3e6dd' , 5300 );
insert into stocks (product_id , "count" ) values ( '0820a085-6f2c-49be-b9c3-dc8c8b418fa9' , 12 );
insert into stocks (product_id , "count" ) values ( '86eee164-3b65-420b-ba38-c19a5e1c91cb' , 7112 );
insert into stocks (product_id , "count" ) values ( 'd3ea429e-6d88-4f1f-a7b6-f0a21010ed62' , 5007 );
insert into stocks (product_id , "count" ) values ( '50912f5c-5c54-4587-ba4c-db8d88da12ba' , 9214 );
insert into stocks (product_id , "count" ) values ( '3d84ab69-facd-4449-81da-9ebdcecf3e52' , 5128 );
insert into stocks (product_id , "count" ) values ( '0f17cd87-36db-487a-9cd5-918e771a11b8' , 153 );
insert into stocks (product_id , "count" ) values ( '5c0a40fb-7f78-497b-9e6b-8faa2e424141' , 1374 );
insert into stocks (product_id , "count" ) values ( 'c2aa6d9b-1d9b-4a0a-b71a-b4cff02a0086' , 1756 );
insert into stocks (product_id , "count" ) values ( 'cbadcb73-fb79-4993-96cf-8c26f056421a' , 2232 );
insert into stocks (product_id , "count" ) values ( '1f42efef-5202-4176-9e3b-04f1270316bd' , 4255 );
insert into stocks (product_id , "count" ) values ( '38380cf6-56de-4d16-a695-d154583b2053' , 5318 );
insert into stocks (product_id , "count" ) values ( '3222da75-b19d-4483-aa90-592ecc996f56' , 3958 );
insert into stocks (product_id , "count" ) values ( '561f6be5-8ed9-4eef-a4b7-e570d535ac18' , 3659 );
insert into stocks (product_id , "count" ) values ( '3480420f-de54-4a3c-968d-1625b6f29e0a' , 5505 );
insert into stocks (product_id , "count" ) values ( '98d735f3-61cd-4bce-ad23-410662dd1908' , 7664 );
insert into stocks (product_id , "count" ) values ( '937bb02b-7e30-4e74-9a59-634a3bcdb68d' , 6926 );
insert into stocks (product_id , "count" ) values ( '435ae444-176a-4003-8fcf-219ecad1074c' , 6880 );
insert into stocks (product_id , "count" ) values ( 'a847cc52-e461-4e77-9bbe-afd7c583cfd7' , 2125 );
insert into stocks (product_id , "count" ) values ( 'd3cba7ea-f45d-4e72-864f-acac47cf89da' , 5333 );
insert into stocks (product_id , "count" ) values ( '3b0bced7-c50b-41f2-aada-8dd48130b81e' , 1924 );
insert into stocks (product_id , "count" ) values ( 'a814ad29-cf5c-4e73-9c2c-387bf6fd9ba6' , 507 );
insert into stocks (product_id , "count" ) values ( 'a16321e6-e59c-4538-9386-d4db5e0325ef' , 1180 );
insert into stocks (product_id , "count" ) values ( '53d76d34-9321-4a0a-a7aa-2a652035c6df' , 8820 );
insert into stocks (product_id , "count" ) values ( '858e3ff3-fc4e-4f36-92e7-d249ba0f3f1c' , 8409 );
insert into stocks (product_id , "count" ) values ( 'f5a4a2c6-a4f2-44ae-adb9-80ca4f9e3150' , 9476 );
insert into stocks (product_id , "count" ) values ( '8b03aab7-2a3e-4250-9c8b-3f9398a85e87' , 5934 );
insert into stocks (product_id , "count" ) values ( 'd699590b-0ccd-4e3c-90cb-9c28dad12163' , 1206 );
insert into stocks (product_id , "count" ) values ( '3cf7f1f8-1c0d-4783-9760-87e1a0970d6e' , 1803 );
insert into stocks (product_id , "count" ) values ( 'e4e03a06-a634-4353-9730-13567cafdf1c' , 3591 );
insert into stocks (product_id , "count" ) values ( 'c151cbe5-909f-4961-a096-8bccbb9293d3' , 9597 );
insert into stocks (product_id , "count" ) values ( 'd8f517bc-fdd5-4258-bcc6-93dee31ee8fb' , 4168 );
insert into stocks (product_id , "count" ) values ( '66f1c694-a7d0-49d8-a4f8-0aafd6b350a5' , 9891 );
insert into stocks (product_id , "count" ) values ( 'bb8d5cab-9ece-4da7-a1c2-c1abeae3032d' , 3984 );
insert into stocks (product_id , "count" ) values ( '8d26fa52-60b5-4e93-86b3-c22b5d98fd49' , 196 );
insert into stocks (product_id , "count" ) values ( 'a0c5876d-4d0e-4735-b048-b0eab0aebe5e' , 6841 );
insert into stocks (product_id , "count" ) values ( '3ddf7244-6621-4502-9b6b-3656ceb6c505' , 2177 );
insert into stocks (product_id , "count" ) values ( '6d80ab94-e9f0-4913-a0b0-b074a6badabd' , 4003 );
insert into stocks (product_id , "count" ) values ( 'f759d115-3416-4ad1-90b5-7cc7fea825e4' , 1949 );
insert into stocks (product_id , "count" ) values ( '98b362cd-0cac-4d40-b7e1-374e31da49cc' , 2125 );
insert into stocks (product_id , "count" ) values ( '8f3875e0-273d-48a1-86a8-cb084fa4fc75' , 1993 );
insert into stocks (product_id , "count" ) values ( '65fd2f08-ee9e-4943-a93c-5c314f67f667' , 6413 );
insert into stocks (product_id , "count" ) values ( 'eb35f384-e905-429d-a3be-693f936002a6' , 8408 );
insert into stocks (product_id , "count" ) values ( '467245e1-610e-4ac4-8c59-584594d17cb3' , 1250 );
insert into stocks (product_id , "count" ) values ( 'bd05f596-ddd4-46d3-b0de-6f9c61bb5f19' , 9380 );
insert into stocks (product_id , "count" ) values ( 'c4a3a61b-2074-4c48-a49d-bcb152e29ad8' , 2087 );
insert into stocks (product_id , "count" ) values ( 'f4a30a33-3dc4-497a-9d02-73755585d63c' , 8453 );
insert into stocks (product_id , "count" ) values ( 'd9617e98-6104-4c68-bd68-4c060ac219f4' , 81 );
insert into stocks (product_id , "count" ) values ( '396db9aa-3b86-45a5-ae04-077777ffbeab' , 3950 );
insert into stocks (product_id , "count" ) values ( '1bc18511-46f7-489d-91cb-00b7dd91ca0c' , 4390 );
insert into stocks (product_id , "count" ) values ( 'c6dc48f1-1e69-4f3d-85fd-86833de04a04' , 574 );
insert into stocks (product_id , "count" ) values ( 'f6006687-8d3b-4661-a5ed-d1d48d1a5d25' , 933 );
insert into stocks (product_id , "count" ) values ( '78ac18b6-bd1f-412c-bcf3-0f31ab3a5cd9' , 5949 );
insert into stocks (product_id , "count" ) values ( '43170356-662e-457f-ae5c-225ca22d3908' , 4778 );
insert into stocks (product_id , "count" ) values ( '1eeacf60-3133-48f8-8ea5-29dac6b7a87b' , 5791 );
insert into stocks (product_id , "count" ) values ( '1e3b340d-e2bd-4069-97ad-f22658210540' , 8879 );
insert into stocks (product_id , "count" ) values ( 'ede04d4c-00b2-4cc5-8ba1-cde7d9cd11f8' , 7708 );
insert into stocks (product_id , "count" ) values ( '95c2b6fc-ac90-4c1f-a2b7-f2e4f433b412' , 2565 );
insert into stocks (product_id , "count" ) values ( 'b14c7ffa-9a62-4b5e-a4f6-a17f9cf9ebae' , 9199 );
insert into stocks (product_id , "count" ) values ( '76f1f5e8-9dc6-4907-a7c7-849396385b40' , 2915 );
insert into stocks (product_id , "count" ) values ( 'd556919d-63ab-443b-823a-6fc567f653ce' , 2731 );
insert into stocks (product_id , "count" ) values ( 'ce595b6b-1e05-4c31-9599-9a5cbaa62c52' , 4182 );
insert into stocks (product_id , "count" ) values ( 'e2e61ba2-8671-413e-a493-6e29993766d6' , 1359 );
insert into stocks (product_id , "count" ) values ( 'aa8e80e6-738b-49de-97ff-93777ac4054f' , 6430 );
insert into stocks (product_id , "count" ) values ( 'dded42ad-fdd5-4f84-8c9d-fe4abaa39d17' , 160 );
insert into stocks (product_id , "count" ) values ( '20f91c00-e99c-4198-ac19-149898924c36' , 3827 );
insert into stocks (product_id , "count" ) values ( 'ed041180-044c-42b4-bc19-a733ad7f80b4' , 7937 );
insert into stocks (product_id , "count" ) values ( 'fa24cc28-9ee0-40a7-bfaa-14d575806add' , 6819 );
insert into stocks (product_id , "count" ) values ( '6859436c-cf05-455e-903f-c20fb02c9269' , 5852 );
insert into stocks (product_id , "count" ) values ( 'aaed118f-c15e-4b20-bf85-060f0ac0af19' , 290 );
insert into stocks (product_id , "count" ) values ( 'b4c05243-1e80-4fd2-9307-7f5a5b824909' , 508 );
insert into stocks (product_id , "count" ) values ( '880cb6a6-769d-4f37-b56d-833e02905ade' , 9211 );
insert into stocks (product_id , "count" ) values ( '3535216a-b4a2-403a-81f4-e6b3e5904f7f' , 1820 );
insert into stocks (product_id , "count" ) values ( '61fef635-7704-46f1-b7d8-add130d5013d' , 3583 );
insert into stocks (product_id , "count" ) values ( '1930b9a0-94d2-450b-bd92-2e3b19f4af32' , 3373 );
insert into stocks (product_id , "count" ) values ( '833cfd99-0068-454e-a748-dcce9cecf3f6' , 6623 );
insert into stocks (product_id , "count" ) values ( '703e36b3-dedf-46e7-8cfe-bbc1d70bf74a' , 351 );
insert into stocks (product_id , "count" ) values ( 'f82cbb3d-473c-4765-8514-a6f7ad3ed07f' , 1268 );
insert into stocks (product_id , "count" ) values ( '297d9df4-0a2b-4cfb-b796-c6a6d208bc43' , 4691 );
insert into stocks (product_id , "count" ) values ( '40664835-2385-4a2e-b3d5-5a55bb8e8b73' , 7143 );



