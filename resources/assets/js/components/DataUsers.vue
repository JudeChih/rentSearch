<template>
    <div id="mainBody" class="data-users">
        <div id="page-header" class="header">
            <div class="header-wrap wrapper">
                <div id="search" class="search">
                    <input v-on:keyup="getVueItems" type="text" name="search" placeholder="Search" v-model="search"/>
                    <i class="icon-search"></i>
                </div>
                <div class="create-wrap">
                     <h2>租網檢索列表</h2>
                </div>
            </div>
        </div>
        <div id="page-container" class="wrapper">
            <div class="rent-list-wrap">
                <div class="rent-list-title">
                    <div class="title-name rent-date cell"><span>日期</span></div>
                    <div class="title-name rent-tpl cell"><span>TPL</span></div>
                    <div class="title-name rent-code cell"><span>@Code</span></div>
                    <div class="title-name rent-caseName cell"><span>專案名稱</span></div>
                    <div class="title-name rent-designer cell"><span>提問/平面</span></div>
                    <div class="title-name rent-editor cell"><span>切版</span></div>
                </div>
                <div class="panel-group rent-list-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel rent-list-row" v-for="(row, index) in items">

                        <a href="#" class="rent-list-tab" role="tab" :id="'heading-'+index">
                            <a href="#" class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" :href="'#collapse-'+index" aria-expanded="false" :aria-controls="'collapse-'+index">
                                <div class="rent-list rent-date cell">
                                    {{ row.date }}
                                </div>
                                <div class="rent-list rent-tpl cell">
                                    {{ row.tpl }}
                                </div>
                                <div class="rent-list rent-code cell">
                                    {{ row.code }}
                                </div>
                                <div class="rent-list rent-caseName cell">
                                    {{ row.caseName }}
                                </div>
                                <div class="rent-list rent-designer cell">
                                    {{ row.designer }}
                                </div>
                                <div class="rent-list rent-editor cell">
                                    {{ row.editor }}
                                </div>
                                <div class="rent-btn-box cell rent-btn-user">
                                    <a href="#" class="rent-list-btn btn-illustration" ><i class="icon-pic"></i>
                                        <span class="float-pic" v-if="row.filename">
                                            <img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" class="diagram-img" style="height: 200px;">
                                        </span>
                                    </a>
                                    <a href="#" class="rent-list-btn btn-unfolded collapsed" role="button" data-toggle="collapse" data-parent="#accordion" :href="'#collapse-'+index" aria-expanded="false" :aria-controls="'collapse-'+index"><i class="icon-unfold"></i></a>
                                </div>
                            </a>
                        </a>

                        <div :id="'collapse-'+index" class="panel-collapse collapse" role="tabpanel" :aria-labelledby="'heading-'+index">
                            <div class="panel-body">
                                <div v-if="row.filename" class="diagram-img">
                                    <img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" style="max-width: 224px;">
                                </div>
                                <div v-else>
                                    <img src="uploads/avatars/no-pic.png" id="showimages" class="diagram-img" style="max-width: 224px;">
                                </div>

                                <div class="unfolded-content">
                                    <h3>Ver {{ row.ver }}</h3>
                                    <ul>
                                        <li>
                                            套版<span>{{ row.rd }}</span>
                                        </li>
                                        <li>
                                            路徑<span>{{ row.link }}</span>
                                        </li>
                                        <li>
                                            備註<span>{{ row.remark }}</span>
                                        </li>
                                    </ul>
                                    <div class="update-time">
                                        <span>更新於 {{ row.created_at }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- 切換頁面控制 -->
            <nav class="pageination">
                <ul class="pageination-wrap">
                    <li>
                        <button v-if="pagination.current_page > 1" class="ctrl-first" @click.prevent="changePage(pagination.current_page = 1)">First</button>
                        <button v-else class="ctrl-first-over">First</button>
                    </li>
                    <li>
                        <button v-if="pagination.current_page > 1" aria-label="Previous" class ="ctrl-prev" @click.prevent="changePage(pagination.current_page - 1)"><i class="icon-left"></i></button>
                        <button v-else aria-label="Previous" class ="ctrl-prev ctrl-prev-over"><i class="icon-left"></i></button>
                    </li>
                    <li v-for="page in pagesNumber" class="ctrl-num" v-bind:class="[ page == isActived ? 'active' : '']">
                        <button @click.prevent="changePage(page)">{{ page }}</button>
                    </li>
                    <li>
                        <button v-if="pagination.current_page < pagination.last_page" aria-label="Next" class ="ctrl-after" @click.prevent="changePage(pagination.current_page + 1)"><i class="icon-right"></i></button>
                        <button v-else aria-label="Next" class ="ctrl-after ctrl-after-over"><i class="icon-right"></i></button>
                    </li>
                    <li>
                        <button v-if="pagination.current_page < pagination.last_page" class="ctrl-last" @click.prevent="changePage(pagination.current_page = pagination.last_page)">Last</button>
                        <button v-else class="ctrl-last-over">Last</button>
                    </li>
                </ul>
            </nav>
        </div>



























    </div>

</template>















<script>
    import Vue from 'vue'

    export default {
        created() {;
            this.changePage(this.pagination.current_page);
        },
        props: ['source'],
        data() {
            return {
                items: [],
                filename: '',
                pagination: {
                    page: 1,
                    total: 0,
                    per_page: 2,
                    from: 1,
                    to: 0,
                    current_page: 1,
                },
                paginatedItems: [],
                form: {
                    date: '',
                    tpl: '',
                    caseName: '',
                    designer: '',
                    editor: '',
                    rd: '',
                    link: '',
                    ver: '',
                    created_at: ''
                },
                search: '',
                offset: 2,
                formErrors: {},
                formErrorsUpdate: {},
            }
        },
        computed: {
            isActived: function() {
                return this.pagination.current_page;
            },
            pagesNumber: function() {
                if (!this.pagination.to) {
                    return [];
                }
                if(this.pagination.current_page !== 1) {
                    var from = this.pagination.current_page -1;
                } else {
                    from = 1;
                }
                var to = this.pagination.current_page + 1;

                if (from == 1 && this.pagination.last_page > 2) {
                    to = 3
                }
                if (to > this.pagination.last_page) {
                    to = this.pagination.last_page;
                    from = this.pagination.current_page - 2;
                }
                var pagesArray = [];
                 if (from < 1) {
                    from = 1;
                }
                while (from <= to) {
                    pagesArray.push(from);
                    from++;
                }
                return pagesArray;
            }
        },
        methods: {
            getVueItems: function(page) {
                var vm = this
                axios.get(`${this.source}?page=` + page + '&search=' + this.search)
                    .then(function(response) {
                        Vue.set(vm.$data, 'items', response.data.data.data)
                        Vue.set(vm.$data, 'pagination', response.data.pagination)
                    })
                    .catch(function(response) {
                        console.log(response)
                    })
            },
            clearSearchItem() {
                this.search = '';
                this.changePage(this.pagination.current_page);
            },
            changePage: function(page) {
                let vm = this;
                this.pagination.current_page = page;
                setTimeout(function() {
                    vm.getVueItems(page);
                }, 100);
            },
        }
    }
</script>