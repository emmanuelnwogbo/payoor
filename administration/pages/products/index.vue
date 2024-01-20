<template>
  <div>
    <Header />
    <div class="container">
      <div class="items">
        <div class="container__header items__header">
          <h1 class="items__h1"><span>Payoor</span> <span>Products</span></h1>
          <h2 class="items__h2">
            Product list management
          </h2>

          <div class="items__search">
            <input placeholder="find an item" />
          </div>
        </div>

        <div class="container__content">
          <div class="container__content--left"></div>
          <div class="container__content--right">
            <div class="items__list">
              <div
                class="items__listrow products__listheader"
                :style="{
                  display: 'grid',
                  'grid-template-columns': `repeat(${headers.length}, 15rem)`,
                }"
              >
                <div
                  class="items__listrow--item header"
                  v-for="(header, index) in headers"
                >
                  <div>{{ header }}</div>
                </div>
              </div>

              <div class="items__listcontent">
                <div v-for="item in items">
                  <Item
                    :item="item"
                    :gridlength="headers.length"
                    :removeitem="removeitem"
                  />
                </div>

                <div class="items__listcontent--add" @click="addemptyitem">
                  <span>
                    <svg
                      role="graphics-symbol"
                      viewBox="0 0 16 16"
                      class="plus"
                      style="
                        width: 14px;
                        height: 14px;
                        display: block;
                        fill: rgba(255, 255, 255, 0.282);
                        flex-shrink: 0;
                        margin-left: -1px;
                        margin-right: 6px;
                      "
                    >
                      <path
                        d="M7.977 14.963c.407 0 .747-.324.747-.723V8.72h5.362c.399 0 .74-.34.74-.747a.746.746 0 00-.74-.738H8.724V1.706c0-.398-.34-.722-.747-.722a.732.732 0 00-.739.722v5.529h-5.37a.746.746 0 00-.74.738c0 .407.341.747.74.747h5.37v5.52c0 .399.332.723.739.723z"
                      ></path>
                    </svg>
                  </span>
                  <span>New</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapState, mapMutations } from "vuex";

export default {
  data() {
    return {
      currentitem: {},
      itemsarr: [],
    };
  },
  computed: {
    headers() {
      return [
        "Aa itemname",
        "description",
        "# price (NGN)",
        "category",
        "# stockQuantity",
        "imageUrl",
        "bestseller",
      ];
    },
    items() {
      return this.itemsarr;
    },
    ...mapState({
      itemslist: (state) => state.item.itemslist,
    }),
  },
  watch: {
    itemslist(newval, oldval) {
      const itemsarr = [...newval];

      this.itemsarr = itemsarr;
    },
  },
  mounted() {
    this.getitems();
  },
  methods: {
    ...mapActions("item", ["getitems"]),
    ...mapMutations("item", ["SET_ITEMS"]),
    removeitem(itemid) {
      const itemsarr = this.itemsarr.filter((item) => item._id !== itemid);

      this.itemsarr = [...itemsarr];
      this.SET_ITEMS(this.itemsarr);
    },
    addemptyitem() {
      const item = {
        _id: this.itemsarr.length + 1,
        itemname: "",
        description: "",
        price: 0,
        category: "",
        stockQuantity: 0,
        imageUrl: "",
        bestseller: false,
        newitem: true,
      };

      this.itemsarr = [...this.itemsarr, item];
      this.SET_ITEMS(this.itemsarr);
    },
  },
};
</script>
