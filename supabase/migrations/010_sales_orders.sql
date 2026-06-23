create table sales_orders (

    id uuid primary key default gen_random_uuid(),

    organization_id uuid references organizations(id) on delete cascade,

    customer_id uuid references companies(id),

    so_number text unique,

    order_date date,
    expected_delivery_date date,

    currency text default 'TRY',

    status text default 'draft',

    sales_channel text,

    total_amount numeric default 0,

    notes text,

    created_at timestamptz default now()
);

create index idx_sales_orders_customer
on sales_orders(customer_id);

create index idx_sales_orders_status
on sales_orders(status);

create index idx_sales_orders_channel
on sales_orders(sales_channel);
