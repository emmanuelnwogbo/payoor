<template>
    <div>
        <div class="layoutslider">
            <div class="section-header">
                <h2 class="section-header-h2">{{ header }}</h2>
                <div></div>
            </div>

            <div class="layoutslider__swiper swiper">
                <div class="layoutslider__swiperswiperwrapper swiper-wrapper">
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/929c/79cc/985a7b089e4d15b00bc14359ddd3946c?Expires=1696809600&Signature=GAsHPeZ~JN087N1ZjbWYWq2d3jLs6S~4TGe9LMb1w6FcXts0ws5dGzUw4SLVl3PD5GIDc5vzc7ON7frtPEQJRfvF306zXGn9WQhEL0lTBZgtfyRf2Bk90OcCZEe9wt~Oe~qCOEnz~usUW7~dq~sbLrnmYJ8H~SFjNg5lxbdWJrVHHHoIzsfwqGVWtZIIbkkmVEILpWp6udR7qAHoGt4Ajqx9Ie33h7YEqXhSZQrZVqvIh48S0WxY5xf855pqaVfcHBg3RBFVfm1jI5DdymO-XI6MoyEoRTxoA7PEhUneXr7J1P54MeYb~BaK9gr8~MEz93vzxbpy-8tF54-Bj-a4TA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/929c/79cc/985a7b089e4d15b00bc14359ddd3946c?Expires=1696809600&Signature=GAsHPeZ~JN087N1ZjbWYWq2d3jLs6S~4TGe9LMb1w6FcXts0ws5dGzUw4SLVl3PD5GIDc5vzc7ON7frtPEQJRfvF306zXGn9WQhEL0lTBZgtfyRf2Bk90OcCZEe9wt~Oe~qCOEnz~usUW7~dq~sbLrnmYJ8H~SFjNg5lxbdWJrVHHHoIzsfwqGVWtZIIbkkmVEILpWp6udR7qAHoGt4Ajqx9Ie33h7YEqXhSZQrZVqvIh48S0WxY5xf855pqaVfcHBg3RBFVfm1jI5DdymO-XI6MoyEoRTxoA7PEhUneXr7J1P54MeYb~BaK9gr8~MEz93vzxbpy-8tF54-Bj-a4TA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure>
                            <img
                                src="https://s3-alpha-sig.figma.com/img/b90e/099f/73c22d1ce6052e7458fd20679cadd03f?Expires=1696809600&Signature=HcSN3ePZIkZAeDcMm8lrAXw39P2-GYxDGErZPdWCI6lPwqd5Dw83CTWTenpxukag19n64Xs0lDMv58sxvYGXv0JYp00s5RG2yxyqNjNKAyP2iCQlVIA0vIIQ7JLzYNiJ8CeSS-RB7bjXfg4FC5m7YZB4pZ1PEmG5T89Ji8M9rveS7NwguAKrT812APfD5Q33XyEo16x0~e5GyayEwOWs~Tkrcw8avLqwLU2NciAZoj3U9cyon3pYjq~SBq2efwkZUqeGVLNw5L0do2h1p~FUYArVnYHrbb-m0gfnTFANoAZtZwEWQIQH3horUJSkRy~No2k6k0tey3vK7hN5z72Kbg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
                        </figure>
                    </div>
                    <div class="swiper-slide">
                        <figure></figure>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</template>

<script>
import { Swiper, Navigation, Pagination, Autoplay } from 'swiper'

export default {
    props: ['header', 'items'],
    mounted() {

        this.$nextTick(() => {
            const swiper = new Swiper(".swiper", {
                slidesPerView: 2,
                spaceBetween: 20,
                freeMode: true
            });
        });
    }
}
</script>

<style lang="scss" scoped>
.layoutslider {
    margin-top: $section-top-margin;

    &__swiper {
        width: 100vw;
        overflow: hidden;
    }

    &__swiperswiperwrapper {
        display: flex;
        align-items: center;
        width: 100vw;
    }

    .swiper-slide {

        & figure {
            height: #{scaleValue(520)};
            width: #{scaleValue(750)};
            overflow: hidden;
            border-radius: $border-radius;

            & img {
                object-fit: cover;
                height: 100%;
                width: 100%;
            }
        }
    }
}
</style>