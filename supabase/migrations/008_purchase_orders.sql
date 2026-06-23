create table purchase_orders (

    id uuid primary key default gen_random_uuid(),

    organization_id uuid references organizations(id) on delete cascade,

    supplier_id uuid references companies(id),

    po_number text unique,

    order_date date,
    expected_delivery_date date,

    currency text default 'USD',

    status text default 'draft',

    total_amount numeric default 0,

    notes text,

    created_at timestamptz default now()
);

create index idx_purchase_orders_supplier
on purchase_orders(supplier_id);

create index idx_purchase_orders_status
on purchase_orders(status);
