<template>
    <div>
        <div class="shop content-padding">
            <MobileHeader />
            <div class="shop__content">
                <LayoutSlider :header="'Shop by category'"/>
                <Layout :header="'Best sellers'"/>
            </div>
            <MobileNav />
        </div>
    </div>
</template>

<script>
export default {

}
</script>

