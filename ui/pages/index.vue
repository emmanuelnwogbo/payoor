<template>
  <div>
    <div class="landingview">
      <Header />

      <div class="landingview__jumbotron">
        <h1 class="landingview__jumbotron--h1">What will you like to eat?</h1>
        <div class="landingview__jumbotron--input">
          <span class="input">
            <input type="text" />
          </span>
          <span class="magnifyingglass">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="63"
              height="64"
              viewBox="0 0 63 64"
              fill="none"
            >
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M30.0286 0C46.5861 0 60.0541 13.468 60.0541 30.0255C60.0541 37.8373 57.0562 44.962 52.1504 50.3092L61.8036 59.9422C62.707 60.8456 62.7101 62.3071 61.8067 63.2105C61.3565 63.6668 60.7614 63.8919 60.1694 63.8919C59.5805 63.8919 58.9885 63.6668 58.5352 63.2167L48.7656 53.4743C43.6263 57.59 37.11 60.0541 30.0286 60.0541C13.4711 60.0541 0 46.583 0 30.0255C0 13.468 13.4711 0 30.0286 0ZM30.0286 4.625C16.021 4.625 4.625 16.0179 4.625 30.0255C4.625 44.0331 16.021 55.4291 30.0286 55.4291C44.0331 55.4291 55.4291 44.0331 55.4291 30.0255C55.4291 16.0179 44.0331 4.625 30.0286 4.625Z"
                fill="white"
              />
            </svg>
          </span>
        </div>
        <div class="landingview__jumbotron--bike">
          <figure>
            <img src="@/assets/imgs/bike desktop.png" />
          </figure>
        </div>
      </div>

      <div class="landingview__shoprecipes">
        <h2 class="landingview__shoprecipes--h2">Shop recipes</h2>

        <div class="landingview__recipescards">
          <div class="recipescard">
            <figure class="recipescard--figure">
              <img src="@/assets/imgs/rice.jpg" />
            </figure>
            <div class="recipescard--description">
              <h4 class="recipescard--h4">Jollof rice</h4>
              <p class="recipescard--details">with chicken breast</p>
              <div class="recipescard--time">
                <span>30mins</span>
                <span class="startcooking" @click="$router.push('/recipe')">Start cooking</span>
              </div>
            </div>
          </div>

          <div class="recipescard">
            <figure class="recipescard--figure">
              <img src="@/assets/imgs/rice.jpg" />
            </figure>
            <div class="recipescard--description">
              <h4 class="recipescard--h4">Jollof rice</h4>
              <p class="recipescard--details">with chicken breast</p>
              <div class="recipescard--time">
                <span>30mins</span>
                <span class="startcooking" @click="$router.push('/recipe')">Start cooking</span>
              </div>
            </div>
          </div>

          <div class="recipescard">
            <figure class="recipescard--figure">
              <img src="@/assets/imgs/rice.jpg" />
            </figure>
            <div class="recipescard--description">
              <h4 class="recipescard--h4">Jollof rice</h4>
              <p class="recipescard--details">with chicken breast</p>
              <div class="recipescard--time">
                <span>30mins</span>
                <span class="startcooking" @click="$router.push('/recipe')">Start cooking</span>
              </div>
            </div>
          </div>

          <div class="recipescard">
            <figure class="recipescard--figure">
              <img src="@/assets/imgs/rice.jpg" />
            </figure>
            <div class="recipescard--description">
              <h4 class="recipescard--h4">Jollof rice</h4>
              <p class="recipescard--details">with chicken breast</p>
              <div class="recipescard--time">
                <span>30mins</span>
                <span class="startcooking" @click="$router.push('/recipe')">Start cooking</span>
              </div>
            </div>
          </div>
        </div>

        <div class="landingview__recipescards--seemore">
          <span></span>
          <span class="seemore"> {{ "See more >>" }} </span>
        </div>
      </div>

      <div class="landingview__shopfoodstuff">
        <div class="landingview__shopfoodstuff--green">
          <h2 class="landingview__shopfoodstuff--h2">Shop Foodstuff</h2>

          <div class="landingview__foodstuffcards"></div>

          <div class="landingview__recipescards--seemore">
            <span></span>
            <span class="seemore white"> {{ "See more >>" }} </span>
          </div>
        </div>
      </div>
    </div>

    <div class="landingview__socials">
      <span class="connectlabel">Connect with us!</span>
      <span class="connectbutton">Instagram</span>
      <span class="connectbutton">Twitter</span>
    </div>
  </div>
</template>

<script></script>

<style lang="scss">
$landing-sidepadding: 0 #{scaleValue(60)};

.landingview {
  //padding: #{scaleValue(15)};
  &__jumbotron {
    color: $white;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-top: #{scaleValue(160)};
    height: #{scaleValue(743)};
    overflow: hidden;

    &--h1 {
      font-weight: 700;
      font-size: #{scaleValue(50)};
    }

    &--input {
      margin-top: #{scaleValue(10)};
      position: relative;
      z-index: 1;
      border: 2px solid $white;
      border-radius: 3rem;
      overflow: hidden;
      width: #{scaleValue(850)};
      height: #{scaleValue(64)};
      flex-shrink: 0;

      & input {
        width: 100%;
        outline: none;
        border: none;
        height: #{scaleValue(64)};
        background: $primary-color;

        padding: #{scaleValue(30)} #{scaleValue(30)};
        font-size: #{scaleValue(30)};
        color: $white;
      }

      & span {
        display: inline-block;

        &.input {
          width: 100%;
        }

        &.magnifyingglass {
          position: absolute;
          top: 0;
          right: 0;
          height: 100%;
          width: #{scaleValue(60)};
          display: flex;
          align-items: center;
          background: $primary-color;

          & svg {
            height: #{scaleValue(30)};
            width: #{scaleValue(30)};
          }
        }
      }
    }

    &--bike {
      position: relative;

      & figure {
        height: #{scaleValue(593)};
        width: #{scaleValue(851)};
        display: flex;
        justify-content: center;
        transform: translateY(#{scaleValue(-160)});

        & img {
          height: 100%;
          wdth: L 100%;
          object-fit: contain;
        }
      }
    }
  }

  &__shoprecipes {
    background: $white;
    padding: $landing-sidepadding;
    min-height: #{scaleValue(100)};
    padding-top: #{scaleValue(60)};
    padding-bottom: #{scaleValue(150)};

    &--h2 {
      color: $grey-black;
      text-align: center;
      font-weight: 500;
      font-size: #{scaleValue(40)};
    }
  }

  &__recipescards {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: #{scaleValue(20)};
    margin-top: #{scaleValue(30)};

    &--seemore {
      margin-top: #{scaleValue(30)};
      display: flex;
      justify-content: space-between;

      & span {
        &.seemore {
          color: $primary-color;
          font-size: #{scaleValue(18)};
          font-weight: 500;
          cursor: pointer;

          &.white {
            color: $white;
          }
        }
      }
    }
  }

  &__shopfoodstuff {
    padding: $landing-sidepadding;

    &--green {
      background: $faint-green;
      border-radius: #{scaleValue(8)};
      transform: translateY(#{scaleValue(-100)});
      //min-height: #{scaleValue(300)};
      padding: $landing-sidepadding;
      padding-top: #{scaleValue(60)};
      padding-bottom: #{scaleValue(60)};
      color: $white;
    }

    &--h2 {
      text-align: center;
      font-weight: 500;
      font-size: #{scaleValue(40)};
      color: $white;
    }
  }

  &__socials {
    color: $white;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-bottom: #{scaleValue(180)};

    & span {

      &.connectlabel {
        font-size: #{scaleValue(25)};
      }

      &.connectbutton {
        border: 1px solid $white;
        border-radius: #{scaleValue(28)};
        font-size: #{scaleValue(25)};
        cursor: pointer;
        margin-top: #{scaleValue(15)};
        width: #{scaleValue(240)};
        display: flex;
        justify-content: center;
        align-items: center;
        padding: #{scaleValue(7)} #{scaleValue(20)};
      }
    }
  }
}
</style>
