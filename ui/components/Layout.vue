<template>
    <div>
        <div class="layout">
            <div class="section-header">
                <h2 class="section-header-h2">{{ header }}</h2>
                <label class="green-link">
                    <NuxtLink to="/shoplist">See All</NuxtLink>
                </label>
            </div>

            <div class="layout__grid">
                <div class="layout__card">
                    <LayoutCard />
                </div>
                <div class="layout__card">
                    <LayoutCard />
                </div>
                <div class="layout__card">
                    <LayoutCard />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['header', 'items']
}
</script>

<style lang="scss" scoped>
.layout {

    &__header {}

    &__grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: #{scaleValue(80)};
        grid-row-gap: #{scaleValue(200)};
    }

    &__card {
        
    }
}
</style>