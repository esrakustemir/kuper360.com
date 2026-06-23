create table warehouses (

    id uuid primary key default gen_random_uuid(),

    organization_id uuid references organizations(id) on delete cascade,

    warehouse_code text unique,
    warehouse_name text not null,

    country text,
    city text,
    address text,

    is_active boolean default true,

    created_at timestamptz default now()
);

create index idx_warehouses_org
on warehouses(organization_id);
