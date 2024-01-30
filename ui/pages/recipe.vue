<template>
  <div>
    <div class="recipe">
      <Header />

      <div class="recipe__jumbotron">
        <img src="@/assets/imgs/Rectangle 50.jpg" />
      </div>

      <div class="recipe__content">
        <div class="recipe__content--section recipe__headerarea">
          <h1 class="recipe__headerarea--h1">Jollof rice</h1>

          <div class="recipe__headerarea--description">
            <p>
              No matter the weather, it’s normal to crave a big bowl of soup (i.e. the
              culinary equivalent of a bear hug). Enter this hearty, soul-warming
              rendition. It’s chock-full of goodness—that is to say spiced chicken
              sausage, tender chickpeas, wilted spinach, and a bevy of Italian herbs in a
              rich, tomatoey broth. Soup’s on!
            </p>
          </div>

          <div class="recipe__headerarea--details">
            <div class="recipe__headerarea--detail">
              <h4>Total prep time</h4>
              <span>30 minutes</span>
            </div>

            <div class="recipe__headerarea--detail">
              <h4>Difficulty level</h4>
              <span>Easy</span>
            </div>
          </div>
        </div>

        <div class="recipe__content--section recipe__ingredients">
          <h2 class="recipe__ingredients--h2">Ingredients</h2>

          <div class="recipe__ingredients--grid">
            <div class="recipe__ingredient">
              <figure class="recipe__ingredient--image">
                <img src="@/assets/imgs/Ellipse 2.jpg" />
              </figure>
              <div class="recipe__ingredient--details">
                <div class="recipe__ingredient--quantity">
                  <span class="button">-</span>
                  <span>1</span>
                  <span class="button">+</span>
                </div>
                <div class="recipe__ingredient--description">
                  <p>Rice</p>
                </div>
              </div>
            </div>

            <div class="recipe__ingredient">
              <figure class="recipe__ingredient--image">
                <img src="@/assets/imgs/Ellipse 2.jpg" />
              </figure>
              <div class="recipe__ingredient--details">
                <div class="recipe__ingredient--quantity">
                  <span class="button">-</span>
                  <span>1</span>
                  <span class="button">+</span>
                </div>
                <div class="recipe__ingredient--description">
                  <p>Rice</p>
                </div>
              </div>
            </div>

            <div class="recipe__ingredient">
              <figure class="recipe__ingredient--image">
                <img src="@/assets/imgs/Ellipse 2.jpg" />
              </figure>
              <div class="recipe__ingredient--details">
                <div class="recipe__ingredient--quantity">
                  <span class="button">-</span>
                  <span>1</span>
                  <span class="button">+</span>
                </div>
                <div class="recipe__ingredient--description">
                  <p>Rice</p>
                </div>
              </div>
            </div>

            <div class="recipe__ingredient">
              <figure class="recipe__ingredient--image">
                <img src="@/assets/imgs/Ellipse 2.jpg" />
              </figure>
              <div class="recipe__ingredient--details">
                <div class="recipe__ingredient--quantity">
                  <span class="button">-</span>
                  <span>1</span>
                  <span class="button">+</span>
                </div>
                <div class="recipe__ingredient--description">
                  <p>Rice</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="recipe__content--section recipe__steps">
          <div class="recipe__steps--toparea">
            <div></div>
            <div class="recipe__steps--downloadrecipebtn">
              <span class="text">Download recipe</span>
              <span class="svg">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="27"
                  height="25"
                  viewBox="0 0 27 25"
                  fill="none"
                >
                  <path
                    fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M7.61523 6.26932C8.16367 6.26932 8.60879 6.71443 8.60879 7.26287C8.60879 7.81131 8.16367 8.25642 7.61523 8.25642H6.36866C4.23053 8.25642 2.49248 9.99315 2.49248 12.13V18.6013C2.49248 20.746 4.23583 22.4894 6.38058 22.4894H21.1381C23.2736 22.4894 25.013 20.75 25.013 18.6145V12.1445C25.013 9.99978 23.2683 8.25642 21.1262 8.25642H19.8916C19.3431 8.25642 18.898 7.81131 18.898 7.26287C18.898 6.71443 19.3431 6.26932 19.8916 6.26932H21.1262C24.3652 6.26932 27.0001 8.90554 27.0001 12.1445V18.6145C27.0001 21.8469 24.3692 24.4765 21.1381 24.4765H6.38058C3.1416 24.4765 0.505371 21.8416 0.505371 18.6013V12.13C0.505371 8.89759 3.13497 6.26932 6.36866 6.26932H7.61523ZM13.7538 0C14.3022 0 14.7474 0.445112 14.7474 0.993553L14.7463 14.5403L16.9133 12.3651C17.3001 11.9756 17.928 11.9756 18.3175 12.3624C18.7057 12.7493 18.707 13.3785 18.3202 13.768L14.4662 17.6371C14.4285 17.6758 14.3878 17.7115 14.3443 17.7436L14.4572 17.6455C14.4146 17.6888 14.3683 17.7276 14.3191 17.7618C14.289 17.7825 14.2585 17.8013 14.2269 17.8185C14.2117 17.8268 14.1958 17.8349 14.1796 17.8425C14.1507 17.8563 14.121 17.8687 14.0907 17.8796C14.0754 17.885 14.0603 17.89 14.045 17.8947C14.0076 17.9063 13.9693 17.9156 13.9301 17.9226C13.9213 17.9241 13.9133 17.9254 13.9052 17.9267C13.8736 17.9316 13.8406 17.9351 13.8072 17.9368C13.7892 17.9378 13.7715 17.9383 13.7538 17.9383L13.7011 17.9343L13.619 17.9292C13.6132 17.9284 13.6074 17.9275 13.6016 17.9267L13.7538 17.9383C13.6946 17.9383 13.6359 17.933 13.5783 17.9227C13.5384 17.9156 13.5001 17.9063 13.4628 17.8949C13.4479 17.8902 13.4332 17.8854 13.4187 17.8802C13.3883 17.8694 13.3582 17.8569 13.3289 17.843C13.3111 17.8346 13.2934 17.8255 13.276 17.816C13.2516 17.8025 13.228 17.7882 13.205 17.7729C13.1893 17.7626 13.1736 17.7515 13.1583 17.7399C13.1204 17.7115 13.0847 17.6805 13.0514 17.6472L13.0504 17.6455L9.18743 13.768C8.80061 13.3785 8.80193 12.7493 9.19008 12.3624C9.57955 11.9756 10.2075 11.9756 10.5943 12.3651L12.7592 14.5403L12.7602 0.993553C12.7602 0.445112 13.2054 0 13.7538 0Z"
                    fill="#249B48"
                  />
                </svg>
              </span>
            </div>
          </div>

          <div class="recipe__steps--content">
            <div class="recipe__step">
              <div class="recipe__step--left">
                <figure>
                  <img src="@/assets/imgs/Rectangle 62.jpg" />
                </figure>
                <label>Step 1</label>
              </div>
              <div class="recipe__step--right">
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis velit
                  justo, tincidunt quis finibus nec, feugiat id urna. Mauris eget
                  vulputate eros. Etiam sit amet fermentum purus. Donec congue quam
                  sapien, et interdum lorem commodo et. Mauris interdum felis at felis
                  convallis mattis eget et lectus
                </p>
              </div>
            </div>

            <div class="recipe__step">
              <div class="recipe__step--left">
                <figure>
                  <img src="@/assets/imgs/Rectangle 62.jpg" />
                </figure>
                <label>Step 2</label>
              </div>
              <div class="recipe__step--right">
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis velit
                  justo, tincidunt quis finibus nec, feugiat id urna. Mauris eget
                  vulputate eros. Etiam sit amet fermentum purus. Donec congue quam
                  sapien, et interdum lorem commodo et. Mauris interdum felis at felis
                  convallis mattis eget et lectus
                </p>
              </div>
            </div>
          </div>
        </div>

        <div class="recipe__content--section recipe__youmightlike">
          <h2 class="recipe__youmightlike--h2">You might also like</h2>

          <div class="recipe__youmightlike--grid">
            <div class="recipescard">
              <figure class="recipescard--figure">
                <img src="@/assets/imgs/rice.jpg" />
              </figure>
              <div class="recipescard--description">
                <h4 class="recipescard--h4">Jollof rice</h4>
                <p class="recipescard--details">with chicken breast</p>
                <div class="recipescard--time">
                  <span>30mins</span>
                  <span class="startcooking" @click="$router.push('/recipe')"
                    >Start cooking</span
                  >
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
                  <span class="startcooking" @click="$router.push('/recipe')"
                    >Start cooking</span
                  >
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
                  <span class="startcooking" @click="$router.push('/recipe')"
                    >Start cooking</span
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.recipe {
  background: $grey-background;
  min-height: 100vh;

  &__jumbotron {
    height: #{scaleValue(656)};

    & img {
      height: 100%;
      width: 100%;
    }
  }

  &__content {
    padding: 0 #{scaleValue(100)};

    &--section {
      background: $white;
      padding: #{scaleValue(60)};
      margin-bottom: #{scaleValue(60)};
      transform: translateY(#{scaleValue(-180)});
    }
  }

  &__headerarea {
    padding-bottom: #{scaleValue(80)};

    &--h1 {
      font-size: #{scaleValue(60)};
      font-weight: 600;
      margin-bottom: #{scaleValue(40)};
    }

    &--description {
      font-size: #{scaleValue(20)};
      line-height: #{scaleValue(30)};
      font-weight: 300;
      margin-bottom: #{scaleValue(40)};
    }

    &--details {
      display: flex;
      align-items: center;
    }

    &--detail {
      margin-right: #{scaleValue(50)};

      & h4 {
        font-size: #{scaleValue(20)};
        font-style: italic;
      }

      & span {
        font-size: #{scaleValue(13)};
      }
    }
  }

  &__ingredients {
    padding-bottom: #{scaleValue(160)};

    &--h2 {
      font-weight: 400;
      font-size: #{scaleValue(40)};
      margin-bottom: #{scaleValue(60)};
    }

    &--grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      row-gap: #{scaleValue(60)};
    }
  }

  &__ingredient {
    display: flex;
    align-items: center;

    &--image {
      height: #{scaleValue(110)};
      width: #{scaleValue(110)};
      border-radius: 100%;
      overflow: hidden;
      margin-right: #{scaleValue(20)};
      flex-shrink: 0;

      & img {
        object-fit: cover;
        height: 100%;
        width: 100%;
      }
    }

    &--details {
      flex-shrink: 0;
    }

    &--quantity {
      border-radius: 8px;
      border: 1px solid $black;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      align-items: center;
      width: #{scaleValue(120)};
      padding: #{scaleValue(2)} 0;
      margin-bottom: #{scaleValue(14)};

      & span {
        display: flex;
        justify-content: center;
        font-size: #{scaleValue(18)};
        font-weight: 300;

        &.button {
          cursor: pointer;
        }
      }
    }

    &--description {
      font-size: #{scaleValue(18)};
      font-weight: 300;
    }
  }

  &__steps {
    &--toparea {
      display: flex;
      justify-content: space-between;
    }

    &--downloadrecipebtn {
      font-size: #{scaleValue(15)};
      display: flex;
      align-items: center;
      cursor: pointer;
      font-weight: 500;
      transform: translateY(#{scaleValue(-40)}) translateX(#{scaleValue(40)});

      & span {
        display: flex;
        align-items: center;

        &.text {
        }

        &.svg {
          height: #{scaleValue(18)};
          width: #{scaleValue(18)};
          fill: $primary-color;
          margin-left: #{scaleValue(10)};
        }
      }
    }

    &--content {
      margin-top: #{scaleValue(50)};
    }
  }

  &__step {
    display: flex;
    margin-bottom: #{scaleValue(60)};

    &--left {
      flex-shrink: 0;
      margin-right: #{scaleValue(20)};

      & figure {
        height: #{scaleValue(338)};
        width: #{scaleValue(488)};

        & img {
          height: 100%;
          width: 100%;
          object-fit: cover;
        }
      }

      & label {
        background: $primary-color;
        color: $white;
        text-align: center;
        display: inline-block;
        padding: #{scaleValue(10)};
        width: 100%;
        font-size: #{scaleValue(30)};
      }
    }

    &--right {
      & p {
        &.description {
          font-size: #{scaleValue(15)};
          line-height: #{scaleValue(30)};
          font-weight: 500;
        }
      }
    }
  }

  &__youmightlike {
    
    &--h2 {
      color: $black;
      text-align: center;
      font-weight: 500;
      font-size: #{scaleValue(30)};
    }

    &--grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-gap: #{scaleValue(20)};
      margin-top: #{scaleValue(30)};
    }
  }
}
</style>
