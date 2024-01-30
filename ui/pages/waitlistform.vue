<template>
  <div>
    <div class="landing">
      <div class="loadinganimation" :class="{ pageloaded: loaderon }">
        <div class="loadinganimation__box">
          <span class="loadinganimation__box--smile">
            <img src="@/assets/imgs/SMILE.png" />
          </span>
          <span class="loadinganimation__box--dot">
            <img src="@/assets/imgs/DOT.png" />
          </span>
        </div>
      </div>

      <div class="mobile">
        <Slider />
      </div>

      <div class="desktop-block">
        <WaitlistPage />
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapState, mapMutations } from "vuex";

export default {
  computed: {
    ...mapState({
      loaderon: (state) => state.loaderon,
    }),
  },
  methods: {
    ...mapActions(["setloaderon", "setloaderoff"]),
  },
  mounted() {
    window.onload = () => {
      this.setloaderon();
    };
  },
};
</script>

<style lang="scss" scoped>
.landing {
}
</style>
