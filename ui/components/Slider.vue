<template>
    <div class="sliderlanding">
        <div class="mobileheader slider">
            <div class="mobileheader__logowrapper">
                <figure class="mobileheader__logo">
                    <img src="@/assets/imgs/payoor-white-logo.png" />
                </figure>
            </div>
            <span class="burger whiteburger">
                <svg xmlns="http://www.w3.org/2000/svg" width="37" height="17" viewBox="0 0 37 17" fill="none">
                    <rect x="0.223877" y="0.671631" width="26.2687" height="2.62687" fill="white" />
                    <rect x="0.223877" y="7.2388" width="36.7761" height="2.62687" fill="white" />
                    <rect x="0.223877" y="13.806" width="31.5224" height="2.62687" fill="white" />
                </svg>
            </span>
        </div>

        <div class="sliderlanding__slide">
            <h2>Your grocery shouldn’t have a tragic back story</h2>
            <div class="sliderlanding__slidebtn">
                <button>Join the Waitlist</button>
            </div>
            <figure>
                <img src="@/assets/imgs/landing page2 1.png" />
            </figure>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            current: 1
        }
    }
}
</script>

<style lang="scss" scoped>
.sliderlanding {
    position: relative;
    background: $primary-color;
    height: 100vh;
    width: 100vw;

    &__slide {
        padding: #{scaleValue(70)};
        padding-top: #{scaleValue(760)};
        overflow: hidden;

        & h2 {
            color: $white;
            font-size: #{scaleValue(200)};
            font-weight: 300;
            text-align: center;
            line-height: #{scaleValue(200)};
        }

        & button {
            color: $primary-color;
            background: $white;
            padding: #{scaleValue(60)} #{scaleValue(200)};
            border: none;
            margin: 0 auto;
            font-weight: 600;
            font-size: #{scaleValue(70)};
            border-radius: #{scaleValue(20)};
        }

        & figure {
            position: absolute;
            top: 0;
            left: 0;
            height: 100vh;

            & img {
                object-fit: contain;
                height: #{scaleValue(3400)};
                transform: translateY( #{scaleValue(70)});
            }
        }
    }

    &__slidebtn {
        display: flex;
        justify-content: center;
        margin-top: #{scaleValue(120)};
    }
}
</style>