{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;\f1\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 SELECT
\f1 \

\f0 \'a0\'a0\'a0\'a0o.Date AS order_date,
\f1 \

\f0 \'a0\'a0\'a0\'a0pc.CategoryName AS category_name,
\f1 \

\f0 \'a0\'a0\'a0\'a0p.ProdName AS product_name,
\f1 \

\f0 \'a0\'a0\'a0\'a0p.Price AS product_price,
\f1 \

\f0 \'a0\'a0\'a0\'a0o.Quantity AS order_qty,
\f1 \

\f0 \'a0\'a0\'a0\'a0ROUND(SUM(p.Price * o.Quantity), 2) AS total_sales,
\f1 \

\f0 \'a0\'a0\'a0\'a0c.CustomerEmail AS cust_email,
\f1 \

\f0 \'a0\'a0\'a0\'a0c.CustomerCity AS cust_city
\f1 \

\f0 FROM
\f1 \

\f0 \'a0\'a0\'a0\'a0bi-muamalat-2024.Final_Task.Orders o
\f1 \

\f0 \'a0\'a0\'a0\'a0JOIN bi-muamalat-2024.Final_Task.Customers c ON o.CustomerID = c.CustomerID
\f1 \

\f0 \'a0\'a0\'a0\'a0JOIN bi-muamalat-2024.Final_Task.Products p ON o.ProdNumber = p.ProdNumber
\f1 \

\f0 \'a0\'a0\'a0\'a0JOIN bi-muamalat-2024.Final_Task.ProductCategory pc ON p.Category = pc.CategoryID
\f1 \

\f0 GROUP BY
\f1 \

\f0 \'a0\'a0\'a0\'a0o.Date,
\f1 \

\f0 \'a0\'a0\'a0\'a0pc.CategoryName,
\f1 \

\f0 \'a0\'a0\'a0\'a0p.ProdName,
\f1 \

\f0 \'a0\'a0\'a0\'a0p.Price,
\f1 \

\f0 \'a0\'a0\'a0\'a0o.Quantity,
\f1 \

\f0 \'a0\'a0\'a0\'a0c.CustomerEmail,
\f1 \

\f0 \'a0\'a0\'a0\'a0c.CustomerCity
\f1 \

\f0 ORDER BY
\f1 \

\f0 \'a0\'a0\'a0\'a0o.Date ASC;}