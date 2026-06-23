create table purchase_order_items (

    id uuid primary key default gen_random_uuid(),

    purchase_order_id uuid references purchase_orders(id) on delete cascade,

    variant_id uuid references product_variants(id),

    quantity numeric not null,

    unit_price numeric not null,

    total_price numeric generated always as (quantity * unit_price) stored,

    created_at timestamptz default now()
);

create index idx_po_items_order
on purchase_order_items(purchase_order_id);

create index idx_po_items_variant
on purchase_order_items(variant_id);
