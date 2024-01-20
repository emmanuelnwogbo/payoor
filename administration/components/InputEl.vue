<template>
  <div class="items__listrow--textinput">
    <input
      :type="inputtype"
      class="text"
      v-model="value"
      ref="input"
      v-if="inputtype === 'text' || inputtype === 'number'"
      @keyup.enter="handleEnterKeyPress"
    />

    <textarea v-model="value" ref="input" v-if="inputtype === 'textarea'"></textarea>
  </div>
</template>

<script>
import { mapActions, mapState, mapMutations } from "vuex";

export default {
  props: [
    "inputvalue",
    "blurfunction",
    "inputtype",
    "setvaluechange",
    "itemattribute",
    "itemid",
  ],
  data() {
    return {
      value: "",
      oldvalue: null,
    };
  },
  watch: {
    value(newval, oldval) {
      this.setvaluechange(newval);
    },
  },
  mounted() {
    this.value = this.inputvalue;

    if (this.$refs.input) {
      this.$refs.input.addEventListener("focus", this.focusfunction);
      this.$refs.input.focus();
      this.$refs.input.addEventListener("blur", this.callblurfunction);
    }
  },
  methods: {
    ...mapActions("item", ["updateitemfromstore"]),
    updateitem() {
      const itemattribute = `${this.itemattribute}`;
      this.updateitemfromstore({ itemid: this.itemid, itemattribute, value: this.value });
    },
    async callblurfunction() {
      if (!this.value || !this.value.trim().length) {
        this.value = this.oldvalue;

        await this.setvaluechange(this.value);

        this.blurfunction();
        return;
      }

      if (this.value !== this.oldvalue) {
        await this.updateitem();
      }

      this.blurfunction();
    },
    handleEnterKeyPress() {
      this.blurfunction();
    },
    focusfunction() {
      this.oldvalue = this.value;
    },
  },
};
</script>
