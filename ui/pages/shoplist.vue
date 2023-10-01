<template>
    <div class="shoplist content-padding">
        <ListHeader :header="'FoodStuff'" />
        <PillSlide />
        <div class="shoplist__list">
            <div class="shoplist__card">
                <LayoutCard />
            </div>
            <div class="shoplist__card">
                <LayoutCard />
            </div>
            <div class="shoplist__card">
                <LayoutCard />
            </div>
            <div class="shoplist__card">
                <LayoutCard />
            </div>
        </div>
        <MobileNav />
    </div>
</template>

<style lang="scss" scoped>
.shoplist {
    margin-top: $section-top-margin;

    &__list {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    &__card {
        width: #{scaleValue(1000)};
        margin-bottom: #{scaleValue(190)};
    }
}
</style>