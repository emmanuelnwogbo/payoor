<template>
    <div class="layoutcard">
        <figure>
            <img
                src="https://s3-alpha-sig.figma.com/img/e1e5/739b/cb9734d1d02480badada04f481bd364e?Expires=1696809600&Signature=YtAyZw1BhwFD2W8L3DomvSm5IR0LF6urOZxC04fqMSQp7rKopi7MCggCFA~Fa2JWSQ7II6ivJMzQQbdkS4CXaAq-4YWa~b2zHVRkuNsjO4lFu5kH4EtAI3OagmxHmyoE0jzpqydorDRkbTenvMQzrrH8~ow8jfveKWoVx9jIdQfjf~DnG28xnql4iuKGYx6-VyGadYqDgq7bT2-N-~bMYSmxr~tPROz3kOghPw1hRgh1gzPgfkXBYvev--0ltGtNiJ8yvV~rrHrW3-amNRDqC2NyoTfWgs~ywuqm2rgdoMfQ9RjA9kgryeryJEz3txAEc2GcddCx4HCmkQCczSWoOQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4" />
        </figure>
        <div class="layoutcard__textarea">
            <label class="layoutcard__textarea--label">Tomato (1 Paint Bucket)</label>
            <span class="layoutcard__textarea--price">NGN2,700</span>
        </div>
        <div class="layoutcard__amounttog">
            <div class="amount-toggle">
                <button class="button" @click="reduceamnt">-</button>
                <div class="amount-toggle-amount">{{ amount }}</div>
                <button class="button" @click="increaseamnt">+</button>
            </div>
        </div>

        <div class="layoutcard__button">
            <button class="button primary">Add to Cart</button>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            amount: 1
        }
    },
    methods: {
        increaseamnt() {
            let amount = this.amount;
            amount += 1;
            this.amount = amount;
        },
        reduceamnt() {
            if (this.amount == 1) {
                return;
            }

            let amount = this.amount;
            amount -= 1;
            this.amount = amount;
        }
    }
}
</script>

<style lang="scss" scoped>
.layoutcard {
    width: 100%;
    overflow: hidden;

    & figure {
        height: #{scaleValue(700)};
        overflow: hidden;
        border-radius: $border-radius;

        & img {
            object-fit: cover;
            height: 100%;
            width: 100%;
        }
    }

    &__textarea {
        line-height: #{scaleValue(80)};
        margin: #{scaleValue(40)} 0;
        display: flex;
        flex-direction: column;

        &--label {
            font-size: #{scaleValue(40)};
            font-weight: 400;
        }

        &--price {
            font-size: #{scaleValue(50)};
            font-weight: 500;
        }
    }

    &__amounttog {
        height: #{scaleValue(140)};
    }

    &__button {
        margin-top: #{scaleValue(50)};

        & button {
            padding: #{scaleValue(50)};
            font-size: #{scaleValue(50)};
        }
    }
}
</style>