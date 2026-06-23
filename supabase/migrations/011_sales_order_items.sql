create table sales_order_items (

    id uuid primary key default gen_random_uuid(),

    sales_order_id uuid references sales_orders(id) on delete cascade,

    variant_id uuid references product_variants(id),

    quantity numeric not null,

    unit_price numeric not null,

    discount_rate numeric default 0,

    vat_rate numeric default 0,

    total_price numeric generated always as (
        quantity * unit_price * (1 - discount_rate / 100)
    ) stored,

    created_at timestamptz default now()
);

create index idx_sales_order_items_order
on sales_order_items(sales_order_id);

create index idx_sales_order_items_variant
on sales_order_items(variant_id);
