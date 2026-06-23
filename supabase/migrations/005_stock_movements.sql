create table stock_movements (

    id uuid primary key default gen_random_uuid(),

    variant_id uuid references product_variants(id),

    movement_type text not null,

    quantity numeric not null,

    unit_cost numeric,

    reference_type text,
    reference_id uuid,

    note text,

    created_at timestamptz default now()
);

create index idx_stock_movements_variant
on stock_movements(variant_id);

create index idx_stock_movements_type
on stock_movements(movement_type);
