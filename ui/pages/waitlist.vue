<template>
    <div>
        <div class="waitlist">

            <div class="waitlist__content">
                <div class="waitlist__photo waitlist__flexarea">
                    <figure class="waitlist__logo logo">
                        <img src="@/assets/imgs/payoor-white.svg" />
                    </figure>

                    <div class="waitlist__textimg">
                        <h3 class="waitlist__h3">
                            <span>
                                Your grocery
                            </span>
                            <span>
                                shouldn’t have
                            </span>
                            <span>
                                a tragic
                            </span>
                            <span>
                                back story
                            </span>
                        </h3>
                    </div>
                    <figure class="waitlist__bike">
                        <img src="@/assets/imgs/bike desktop.png" />
                    </figure>
                </div>
                <div class="form waitlist__formarea waitlist__flexarea">
                    <figure class="waitlist__logo logo">
                        <img src="@/assets/imgs/payoor-green.svg" />
                    </figure>

                    <div class="formarea highz">
                        <div class="inputbox">
                            <input class="inputbox__input" type="text" placeholder="" v-model="firstname" />
                            <label class="inputbox__label">
                                First name
                            </label>
                        </div>
                        <div class="inputbox">
                            <input class="inputbox__input" type="text" placeholder="" v-model="lastname" />
                            <label class="inputbox__label">
                                Last name
                            </label>
                        </div>
                    </div>

                    <div class="formarea">
                        <div class="inputbox full">
                            <input class="inputbox__input" type="email" placeholder="" v-model="email" />
                            <label class="inputbox__label">
                                Email
                            </label>
                        </div>
                    </div>

                    <div class="formarea">
                        <div class="inputbox full">
                            <input class="inputbox__input" type="text" placeholder="" v-model="phonenumber" />
                            <label class="inputbox__label">
                                Phone number
                            </label>
                        </div>
                    </div>

                    <div class="formarea">
                        <div class="inputbox">
                            <input class="inputbox__input" type="text" placeholder="" v-model="state" />
                            <label class="inputbox__label">
                                State
                            </label>
                        </div>
                        <div class="inputbox">
                            <input class="inputbox__input" type="text" placeholder="" v-model="city" />
                            <label class="inputbox__label">
                                City
                            </label>
                        </div>
                    </div>

                    <div class="formarea">
                        <div class="inputbox full">
                            <div class="waitlist-options">
                                <span class="waitlist-option" v-for="option in options" @click="selectoption(option)"
                                    :class="{ greencolor: selectedoptions.includes(option) }">{{ option }}</span>
                            </div>
                            <label class="inputbox__label greencolor">
                                What is most important to you when you shop for foodstuff?
                            </label>
                        </div>
                    </div>

                    <div class="formarea button-area">
                        <div class="inputbox full">
                            <button class="button primary">Join waitlist</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            firstname: "",
            lastname: "",
            email: "",
            phonenumber: "",
            state: "",
            city: "",
            selectedoptions: [],
            options: [
                'Save time',
                'Save money',
                'Eat healthy',
                'Improve my cooking routine',
            ]
        }
    },
    methods: {
        selectoption(option) {
            const selectedoptions = this.selectedoptions;

            if (selectedoptions.includes(option)) {
                const filt = selectedoptions.filter(opt => opt !== option);
                return this.selectedoptions = filt;
            }

            selectedoptions.push(option);
            this.selectedoptions = selectedoptions;
        }
    }
}
</script>

<style lang="scss">
.waitlist {
    height: 100vh;
    background: $white;
    overflow: hidden;

    &__logo {
        position: fixed;
        left: 0;
        top: 0;
        z-index: 10;
    }

    &__content {
        display: flex;
    }

    &__flexarea {
        width: 50%;
        height: 100vh;

        @media only screen and (max-width: 768px) {
            width: 100%;
        }
    }

    &__textimg {}

    &__h3 {
        color: $white;
        font-size: #{scaleValue(57)};
        font-weight: 400;
        text-align: center;
        line-height: #{scaleValue(50)};
        position: relative;
        transform: translateY(#{scaleValue(200)});

        & span {
            display: block;
        }
    }

    &__photo {
        background: $primary-color;
        position: relative;

        @media only screen and (max-width: 768px) {
            display: none;
        }
    }

    &__bike {
        width: 100%;
        display: flex;
        justify-content: center;
        position: absolute;
        bottom: 0;
        left: 0;

        & img {
            object-fit: cover;
            width: 140%;
            transform: translateX(#{scaleValue(-40)}) translateY(#{scaleValue(40)})
        }
    }

    &__formarea {
        position: relative;
        padding: #{scaleValue(20)} #{scaleValue(50)};
        padding-top: #{scaleValue(100)};

        @media only screen and (max-width: 768px) {
            padding: #{scaleValue(20)} #{scaleValue(100)};
            padding-top: #{scaleValue(500)};
        }
    }
}
</style>