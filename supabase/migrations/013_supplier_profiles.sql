create table supplier_profiles (

    id uuid primary key default gen_random_uuid(),

    company_id uuid references companies(id) on delete cascade,

    supplier_code text unique,

    supplier_type text,

    default_currency text default 'USD',

    payment_terms text,

    lead_time_days integer default 0,

    minimum_order_amount numeric default 0,

    quality_rating numeric,

    is_active boolean default true,

    created_at timestamptz default now(),

    unique(company_id)
);

create index idx_supplier_profiles_company
on supplier_profiles(company_id);

create index idx_supplier_profiles_type
on supplier_profiles(supplier_type);

create index idx_supplier_profiles_currency
on supplier_profiles(default_currency);
