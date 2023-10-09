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
            <h2>
                <span :class="{
                    center: current === 1,
                    left: current === 2,
                    right: current === 3,
                    offcreen: current === 2 || current === 3
                }">Your grocery shouldn’t have a tragic back story</span>
                <span :class="{
                    center: current === 2,
                    left: current === 3,
                    right: current === 1,
                    offcreen: current === 3 || current === 1
                }">Eyaah, sorry madame</span>
                <span :class="{
                    center: current === 3,
                    left: current === 1,
                    right: current === 2,
                    offcreen: current === 2 || current === 1
                }">You no go fit park for here</span>
            </h2>
            <div class="sliderlanding__slidebtn">
                <button>Join the Waitlist</button>
            </div>
            <figure>
                <img src="@/assets/imgs/landing page2 1.png" :class="{
                    center: current === 1,
                    left: current === 2,
                    right: current === 3,
                    offcreen: current === 2 || current === 3
                }" />
                <img src="@/assets/imgs/mud spill 1.png" :class="{
                    center: current === 2,
                    left: current === 3,
                    right: current === 1,
                    offcreen: current === 3 || current === 1
                }" />
                <img src="@/assets/imgs/POLICE 1.png" :class="{
                    center: current === 3,
                    left: current === 1,
                    right: current === 2,
                    offcreen: current === 2 || current === 1
                }" />
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
    },
    methods: {
        timefunction() {
            setInterval(() => {
                if (this.current === 3) {
                    this.current = 1;
                } else {
                    let tracker = this.current;
                    tracker += 1;
                    this.current = tracker;
                }

                console.log(this.current)
            }, 3000)
        }
    },
    mounted() {
        this.timefunction();
    }
}
</script>

<style lang="scss" scoped>
.sliderlanding {
    position: relative;
    background: $primary-color;
    height: #{scaleValue(3500)};
    width: 100vw;

    &__slide {
        padding: #{scaleValue(70)};
        padding-top: #{scaleValue(760)};
        overflow: hidden;
        width: 100%;
        height: 100%;

        & h2 {
            color: $white;
            font-size: #{scaleValue(200)};
            font-weight: 300;
            text-align: center;
            line-height: #{scaleValue(200)};
            position: relative;
            z-index: 2;

            display: flex;

            & span {
                flex-shrink: 0;
                width: 100%;
                transition: all .5s ease;
                position: absolute;
                left: 0;

                &.offcreen {
                    opacity: 0;
                    z-index: 2;
                }

                &.center {
                    transform: translateX(0);
                    z-index: 2;
                }

                &.left {
                    transform: translateX(-100%);
                    z-index: 2;
                }

                &.right {
                    transform: translateX(100%);
                    z-index: 2;
                }
            }
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
            position: relative;
            z-index: 2;
        }

        & figure {
            position: absolute;
            top: 0;
            left: 0;
            height: #{scaleValue(3500)};
            z-index: 1;
            width: 100vw;
            overflow: hidden;

            & img {
                position: absolute;
                object-fit: contain;
                height: #{scaleValue(3400)};
                transform: translateY(#{scaleValue(70)});
                transition: all .5s ease;

                &.offcreen {
                    opacity: 0;
                    z-index: 2;
                }

                &.center {
                    opacity: 1;
                }

                &.left {
                    opacity: 0;
                }

                &.right {
                    opacity: 0;
                }
            }
        }
    }

    &__slidebtn {
        display: flex;
        justify-content: center;
        margin-top: #{scaleValue(980)};
    }
}
</style>