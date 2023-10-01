<template>
    <div class="pillslide">
        <div class="pillslide__swiper swiper-two">
            <div class="pillslide__swiperswiperwrapper swiper-wrapper">
                <div class="pillslide__swiperslide swiper-slide">
                    <div class="pillslide__pill">All</div>
                </div>
                <div class="pillslide__swiperslide swiper-slide">
                    <div class="pillslide__pill">Soups & Stew</div>
                </div>
                <div class="pillslide__swiperslide swiper-slide">
                    <div class="pillslide__pill">Meat & Seafood</div>
                </div>
                <div class="pillslide__swiperslide swiper-slide">
                    <div class="pillslide__pill">Fruit</div>
                </div>
                <div class="pillslide__swiperslide swiper-slide">
                    <div class="pillslide__pill"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { Swiper, Navigation, Pagination, Autoplay } from 'swiper'

export default {
    props: ['items'],
    mounted() {

        this.$nextTick(() => {
            const swiper = new Swiper(".swiper-two", {
                slidesPerView: 3,
                spaceBetween: 15,
                freeMode: true
            });
        });
    }
}
</script>

<style lang="scss" scoped>
.pillslide {
    margin-bottom: #{scaleValue(120)};
    width: 100vw;

    &__swiper-two {
        width: 100vw;
        overflow: hidden;
    }

    &__swiperswiperwrapper {
        display: flex;
        align-items: center;
        width: 100vw;
    }

    &__pill { 
        border-radius: 3rem;
        padding: #{scaleValue(40)} #{scaleValue(120)};
        font-size: #{scaleValue(45)};
        font-weight: 500;
        display: flex;
        justify-content: center;
        text-align: center;
        align-items: center;
        flex-shrink: 0;
    }

    &__swiperslide {
        border: 1px solid $primary-color;
        flex-shrink: 0;
        border-radius: 3rem;
        display: flex;
        justify-content: center;
        
        &:last-child {
            border: none;
        }
    }
}
</style>