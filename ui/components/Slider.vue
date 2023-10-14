<template>
    <div class="sliderlanding">
        <div class="mobileheader slider">
            <div class="mobileheader__logowrapper">
                <figure class="mobileheader__logo">
                    <img src="@/assets/imgs/payoor-white-logo.png" />
                </figure>
            </div>
            <span class="burger whiteburger" @click="sidenavtog">
                <svg xmlns="http://www.w3.org/2000/svg" width="37" height="17" viewBox="0 0 37 17" fill="none">
                    <rect x="0.223877" y="0.671631" width="26.2687" height="2.62687" fill="white" />
                    <rect x="0.223877" y="7.2388" width="36.7761" height="2.62687" fill="white" />
                    <rect x="0.223877" y="13.806" width="31.5224" height="2.62687" fill="white" />
                </svg>
            </span>
        </div>

        <div class="mobile sliderlanding__sidenav" :class="{
            open: sidenav
        }" @click="sidenavtog">
            <div class="sliderlanding__sidenav--body">
                <div class="fixed-header-white mobile sliderlanding__sidenav--logo">
                    <figure class="waitlist__logo logo mobile">
                        <img src="@/assets/imgs/payoor-green-two.svg" />
                    </figure>
                </div>

                <div class="sliderlanding__sidenav--socials">
                    <span class="sliderlanding__sidenav--socialsvg">
                        <svg class="">
                            <use xlink:href="@/assets/imgs/sprite.svg#icon-instagram"></use>
                        </svg>
                    </span>
                    <span class="sliderlanding__sidenav--socialsvg">
                        <svg class="">
                            <use xlink:href="@/assets/imgs/sprite.svg#icon-twitter"></use>
                        </svg>
                    </span>
                </div>
            </div>
        </div>

        <div class="sliderlanding__slide">
            <h2>
                <span :class="{
                    center: current === 1,
                    left: current === 2,
                    right: current === 3,
                    offcreen: current === 2 || current === 3
                }" class="font-500">Your meals shouldn’t have a tragic back story</span>
                <span :class="{
                    center: current === 2,
                    left: current === 3,
                    right: current === 1,
                    offcreen: current === 3 || current === 1
                }">"Eyaah, sorry madam"</span>
                <span :class="{
                    center: current === 3,
                    left: current === 1,
                    right: current === 2,
                    offcreen: current === 2 || current === 1
                }">"You no go fit park for here"</span>
            </h2>
            <div class="sliderlanding__slidebtn">
                <button @click="waitlistform">Join the Waitlist</button>
            </div>
            <figure>
                <img src="@/assets/imgs/landing page2 1.png" class="mobile" :class="{
                    center: current === 1,
                    left: current === 2,
                    right: current === 3,
                    offcreen: current === 2 || current === 3
                }" />
                <img src="@/assets/imgs/bike desktop.png" class="desktop" :class="{
                    center: current === 1,
                    left: current === 2,
                    right: current === 3,
                    offcreen: current === 2 || current === 3
                }" />
                <img src="@/assets/imgs/mud spill 1.png" class="mobile" :class="{
                    center: current === 2,
                    left: current === 3,
                    right: current === 1,
                    offcreen: current === 3 || current === 1
                }" />
                <img src="@/assets/imgs/mud desktop.png" class="desktop up" :class="{
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
            current: 1,
            sidenav: false
        }
    },
    methods: {
        sidenavtog() {
            this.sidenav ? this.sidenav = false : this.sidenav = true;
        },
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
        },
        waitlistform() {
            this.$router.push('/waitlist');
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
    height: 100vh;
    width: 100vw;
    overflow: hidden;

    &__sidenav {
        position: fixed;
        top: 0;
        right: 0;
        height: 100vh;
        width: 100vw;
        background: rgba($font-color, .5);
        z-index: 70;
        transform: translateX(100%);
        transition: all .2s ease;

        &.open {
            transform: translateX(0);
        }

        &--body {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            width: #{scaleValue(1500)};
            background: $white;
            padding-top: #{scaleValue(300)};
        }

        &--logo {
            transform: translateX(#{scaleValue(100)})
        }

        &--socials {
            display: flex;
            padding: #{scaleValue(40)} #{scaleValue(70)};
        }

        &--socialsvg {
            margin-right: #{scaleValue(120)};

            & svg {
                height: #{scaleValue(100)};
                width: #{scaleValue(100)};
                fill: rgba($svg-color, .7);
            }
        }
    }

    &__slide {
        padding: #{scaleValue(70)};
        padding-top: #{scaleValue(200)};
        overflow: hidden;
        width: 100%;
        height: 100%;

        @media only screen and (max-width: 320px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 360px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 375px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 414px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 480px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 540px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 600px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 720px) {
            padding-top: #{scaleValue(500)};
        }

        @media only screen and (max-width: 768px) {
            padding-top: #{scaleValue(500)};
        }

        & h2 {

            @media only screen and (max-width: 320px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 360px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 375px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 414px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 480px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 540px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 600px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 720px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            @media only screen and (max-width: 768px) {
                font-size: #{scaleValue(170)};
                line-height: #{scaleValue(200)};
            }

            color: $white;
            font-size: #{scaleValue(60)};
            font-weight: 300;
            text-align: center;
            line-height: #{scaleValue(80)};
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
            padding: #{scaleValue(30)} #{scaleValue(150)};
            border: none;
            margin: 0 auto;
            font-weight: 600;
            font-size: #{scaleValue(23)};
            border-radius: #{scaleValue(10)};
            position: relative;
            z-index: 2;

            @media only screen and (max-width: 320px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 360px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 375px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 414px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 480px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 540px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 600px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 720px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }

            @media only screen and (max-width: 768px) {
                font-size: #{scaleValue(70)};
                padding: #{scaleValue(60)} #{scaleValue(200)};
                border-radius: #{scaleValue(20)};
            }
        }

        & figure {
            position: absolute;
            top: 0;
            left: 0;
            height: #{scaleValue(1000)};
            z-index: 1;
            width: #{scaleValue(1600)};
            overflow: hidden;
            display: flex;
            justify-content: center;

            @media only screen and (max-width: 320px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 360px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 375px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 414px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 480px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 540px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 600px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 720px) {
                height: #{scaleValue(3500)};
            }

            @media only screen and (max-width: 768px) {
                height: #{scaleValue(3500)};
            }


            & img {
                position: absolute;
                object-fit: contain;
                height: #{scaleValue(1000)};
                transform: translateY(#{scaleValue(70)});
                transition: all .5s ease;
                width: #{scaleValue(1700)};

                @media only screen and (max-width: 320px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 360px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 375px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 414px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 480px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 540px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 600px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 720px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

                @media only screen and (max-width: 768px) {
                    height: #{scaleValue(3500)};
                    width: auto;
                }

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

                &.up {
                    transform: translateY(#{scaleValue(-10)});
                }
            }
        }
    }

    &__slidebtn {
        display: flex;
        justify-content: center;
        padding-top: #{scaleValue(130)};

        @media only screen and (max-width: 320px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 360px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 375px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 414px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 480px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 540px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 600px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 720px) {
            padding-top: #{scaleValue(780)};
        }

        @media only screen and (max-width: 768px) {
            padding-top: #{scaleValue(780)};
        }

    }
}
</style>