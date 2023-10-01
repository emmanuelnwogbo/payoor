<template>
    <div class="mobileheader">
        <div class="mobileheader__leftarea">
            <span class="list-header-backarrow">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="14" viewBox="0 0 17 14" fill="none">
                    <path d="M1.00024 7.0246L16.0002 7.0246" stroke="black" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round" />
                    <path d="M7.05005 13.049L1.00005 7.025L7.05005 1" stroke="black" stroke-width="1.5"
                        stroke-linecap="round" stroke-linejoin="round" />
                </svg>
            </span>
            <h2 class="list-header">{{ header }}</h2>
        </div>
        <span class="burger">
            <svg xmlns="http://www.w3.org/2000/svg" width="37" height="17" viewBox="0 0 37 17" fill="none">
                <rect x="0.223877" y="0.671631" width="26.2687" height="2.62687" fill="black" />
                <rect x="0.223877" y="7.2388" width="36.7761" height="2.62687" fill="black" />
                <rect x="0.223877" y="13.806" width="31.5224" height="2.62687" fill="black" />
            </svg>
        </span>
    </div>
</template>

<script>
export default {
    props: ['header']
}
</script>
