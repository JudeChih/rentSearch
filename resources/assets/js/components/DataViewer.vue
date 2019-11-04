<template>
    <div id="mainBody" class="data-viewer">
        <div id="page-header" class="header">
            <div class="header-wrap wrapper">
                <div id="search" class="search">
                    <input type="text" name="search" placeholder="Search" v-model="search"/>
                    <i class="icon-search"></i>
                </div>
                <div class="create-wrap">
                     <h2>租網檢索列表</h2>
                    <button type="button" class="btn btn-create" data-toggle="modal" data-target=".create-project" @click="defaultData()"><span><i class="icon-create"></i>Create</span></button>
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
                                <div class="rent-btn-box cell">
                                    <a href="#" class="rent-list-btn btn-illustration" ><i class="icon-pic"></i>
                                        <span class="float-pic" v-if="row.filename">
                                            <img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" class="diagram-img" style="height: 200px;">
                                        </span>
                                    </a>
                                    <a href="#" class="rent-list-btn btn-unfolded collapsed" role="button" data-toggle="collapse" data-parent="#accordion" :href="'#collapse-'+index" aria-expanded="false" :aria-controls="'collapse-'+index"><i class="icon-unfold"></i></a>
                                </div>
                            </a>
                            <div class="manager-btn">
                                <a href="#" class="rent-list-btn btn-edit" data-toggle="modal" data-target=".edit-project" @click.prevent="editItem(row)"><i class="icon-edit"></i></a>
                                <a href="#" class="rent-list-btn btn-delete" @click.prevent="deleteItem(row)"><i class="icon-delete"></i></a>
                            </div>

                        </a>

                        <div :id="'collapse-'+index" class="panel-collapse collapse" role="tabpanel" :aria-labelledby="'heading-'+index">
                            <div class="panel-body">
                                <!--<img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" class="diagram-img" style="max-width: 240px;>-->
                                <div v-if="row.filename" class="diagram-img">
                                    <img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" style="max-width: 224px;">
                                </div>
                                <div v-else>
                                    <img src="uploads/avatars/no-pic.png" id="showimages" style="max-width: 224px;">
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
                                        <span>更新於 {{ row.updated_at }}</span>
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

        <!-- 彈跳新增視窗-->
        <div class="modal fade create-project" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog modal-create" role="dialog">
                <div class="modal-content creat-content">
                    <h2>NEW</h2>
                    <form method="POST" action="projects" @click="form.errors.clear($event.target.name)" enctype="multipart/form-data" id="form-projects">
                        <div class="form-group">
                            <label for="date">日期</label>
                            <input type="date" id="date" class="form-control" name="date" v-model="form.date" required>
                            <span class="help is-danger" v-if="errorInput.date" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="tpl">TPL</label>
                            <input type="text" class="form-control" name="tpl" v-model="form.tpl" required>
                            <span class="help is-danger" v-if="errorInput.tpl" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="caseName">專案名稱</label>
                            <input type="text" class="form-control" name="caseName" v-model="form.caseName">
                            <span class="help is-danger" v-if="errorInput.caseName" v-text="errorInput.text"></span>
                        </div>


                        <div class="form-group">
                            <label for="designer">提問/平面</label>
                            <input type="text" class="form-control" name="designer" v-model="form.designer">
                            <span class="help is-danger" v-if="errorInput.designer" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="editor">切版</label>
                            <input type="text" class="form-control" name="editor" v-model="form.editor">
                            <span class="help is-danger" v-if="errorInput.editor" v-text="errorInput.text"></span>
                        </div>

                         <div class="form-group">
                            <label for="rd">RD</label>
                            <input type="text" class="form-control" name="rd" v-model="form.rd">
                            <span class="help is-danger" v-if="errorInput.rd" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="ver">版本號</label>
                            <input type="text" class="form-control" name="ver" v-model="form.ver">
                            <span class="help is-danger" v-if="errorInput.ver" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group form-link">

                            <label for="link">檔案路徑</label>
                            <input type="text" class="form-control" name="link" v-model="form.link">
                            <span class="help is-danger" v-if="errorInput.link" v-text="errorInput.text"></span>
                        </div>
                    </form>
                    <form class="upload-form" @submit.prevent="upload()">
                        <div class="form-group file-box">
                            <label for="file">示意</label>
                            <button class="btn-upload">上傳示意圖
                                <input type="file" name="avatar" id="upload-file" class="input-push" @change="onFileChange">
                            </button>
                            <button v-if="image" class="btn-removefile" @click.prevent="removelFileCreate">X</button>
                            <div class="img-box" v-if="image" >
                                <img :src="image" class="img-responsive">
                            </div>
                            <span class="help is-danger" v-if="form.errors.has('image')" v-text="form.errors.get('image')"></span>
                            <span v-if="uploading" class="upload-uploading">圖片上傳中</span>
                        </div>

                        <div class="form-group">
                            <label for="remark">備註</label>
                            <textarea rows="4" cols="50" class="form-control" name="remark" v-model="form.remark">
                            </textarea>
                            <span class="help is-danger" v-if="form.errors.has('remark')" v-text="form.errors.get('remark')"></span>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn-submit" :disabled="form.errors.any()">SUBMIT</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- 彈跳編輯視窗-->
        <div class="modal fade edit-project" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
            <div class="modal-dialog" role="dialog">
                <div class="modal-content">
                    <h2>{{fillItem.caseName}}</h2>
                    <form method="POST" action="projects" enctype="multipart/form-data" id="form-projects">
                        <div class="form-group">
                            <label for="date">日期</label>
                            <input type="date" id="dateTwo" class="form-control" name="date" v-model="fillItem.date" required>
                            <span class="help is-danger" v-if="errorInput.date" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="tpl">TPL</label>
                            <input type="text" class="form-control" name="tpl" v-model="fillItem.tpl" required>
                            <span class="help is-danger" v-if="errorInput.tpl" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="caseName">專案名稱</label>
                            <input type="text" class="form-control" name="caseName" v-model="fillItem.caseName" required>
                            <span class="help is-danger" v-if="errorInput.caseName" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="designer">提問/平面</label>
                             <input type="text" class="form-control" name="designer" v-model="fillItem.designer">
                             <span class="help is-danger" v-if="errorInput.designer" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="editor">切版</label>
                             <input type="text" class="form-control" name="editor" v-model="fillItem.editor">
                             <span class="help is-danger" v-if="errorInput.editor" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="rd">RD</label>
                             <input type="text" class="form-control" name="rd" v-model="fillItem.rd">
                            <span class="help is-danger" v-if="errorInput.rd" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group">
                            <label for="ver">版本號</label>
                            <input type="text" class="form-control" name="ver" v-model="fillItem.ver">
                            <span class="help is-danger" v-if="errorInput.ver" v-text="errorInput.text"></span>
                        </div>

                        <div class="form-group form-link">

                            <label for="link">檔案路徑</label>
                            <input type="text" class="form-control" name="link" v-model="fillItem.link" required>
                            <span class="help is-danger" v-if="errorInput.link" v-text="errorInput.text"></span>
                        </div>
                    </form>
                    <form class="upload-form" >
                        <div class="form-group file-box">
                            <label for="file">示意</label>
                            <button class="btn-upload">上傳示意圖
                                <input type="file" name="avatar" id="upload-file" class="input-push" @change="onFileChange">
                            </button>
                            <button v-if="filename || image" class="btn-removefile" @click.prevent="removelFileEdit">X</button>
                            <div class="img-box" v-if="filename || image">
                                <img v-if="image" :src="image" class="img-responsive">
                                <img v-if="filename && !image" :src="'uploads/avatars/' + filename" class="img-responsive">
                            </div>
                            <span v-if="uploading" class="upload-uploading">圖片上傳中</span>
                        </div>

                        <div class="form-group">
                            <label for="remark">備註</label>
                            <textarea rows="4" cols="50" class="form-control" name="remark" v-model="fillItem.remark">
                            </textarea>
                        </div>

                        <div class="form-group">
                            <button class="btn-submit" :disabled="form.errors.any()" @click.prevent="uploadUpdate(fillItem.id)">SUBMIT</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</template>















<script>
    import Vue from 'vue'
    import axios from 'axios'
    import vSelect from 'vue-select'




    Vue.component('v-select', vSelect)
    class Errors {

        constructor() {
            this.errors = {};
        }

        has(field) {
            // 如果有errors的訊息
            return this.errors.hasOwnProperty(field);
        }

        any() {
            // 驗證字數
            return Object.keys(this.errors).length > 0;
        }

        get(field) {
            if (this.errors[field]) {
                return this.errors[field][0];
            }

        }

        record(errors) {
            this.errors = errors;
        }

        clear(field) {

            if (field) {
                delete this.errors[field];
                return;
            }
            this.errors = {};
        }
    }

    class Form {

        constructor(data) {
            this.orginalData = data;

            for (let field in data) {
                this[field] = data[field];
            }

            this.errors = new Errors();

        }

        data() {
            let data = Object.assign({}, this);

            delete data.orginalData;
            delete data.errors;

            return data;
        }

        reset() {
            for (let field in this.orginalData) {
                this[field] = '';
            }
        }


        submit(requestType, url) {
            axios[requestType](url, this.data())
                // 成功時
                .then(this.onSuccess.bind(this))
                // 錯誤時
                .catch(this.onFail.bind(this));
        }

        onSuccess(response) {
            this.errors.clear();

            this.reset();

        }

        onFail(errors) {
            this.errors.record(errors.response.data);
        }

    }

    export default {
        created() {
            this.changePage(this.pagination.current_page);
        },
        props: ['source'],
        data() {
            return {
                isLoaded: false,
                date: null,
                urlReady: '',
                uploading: false,
                urlSort: '2018',
                urlRent: 'rent',
                urlA: '',
                urlB: '',
                urlC: '',
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
                form: new Form({
                    date: '',
                    tpl: '',
                    caseName: '',
                    designer: '',
                    editor: '',
                    rd: '',
                    link: '',
                    ver: '',
                    remark: '',
                    created_at: ''
                }),
                search: '',
                formErrors: {},
                formErrorsUpdate: {},
                fillItem: {
                    id: '',
                    date: '',
                    tpl: '',
                    caseName: '',
                    designer: '',
                    editor: '',
                    rd: '',
                    link: '',
                    ver: ''
                },
                errorInput: {
                    date: false,
                    tpl: false,
                    caseName: false,
                    designer: false,
                    editor: false,
                    rd: false,
                    text: '請填入正確資訊'
                },
                image: '',
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



                console.log(from)
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

                console.log(from)
                console.log(to)
                while (from <= to) {
                    pagesArray.push(from);
                    from++;
                }
                console.log(pagesArray)
                return pagesArray;
            }
        },
        watch: {
            uploading () {
                if(this.uploading) {
                     if (this.fillItem.id) {
                    this.updateItem(this.fillItem.id)
                    } else {
                        this.createItem()
                    }
                    this.image = '';
                    this.uploading = false;
                    this.changePage(this.pagination.current_page);
                    alert('已更資料');
                }
            },
            search: function() {
                if (this.search) {
                    this.getVueItems();
                } else {
                    this.getVueItems();
                }
            },
        },
        methods: {
            errorData: function() {
                if (!this.form.caseName) {
                    this.errorInput.caseName = true;
                } else {
                    this.errorInput.caseName = false;
                }
            },
            errorData2: function() {
                if (!this.fillItem.caseName) {
                    this.errorInput.caseName = true;
                } else {
                    this.errorInput.caseName = false;
                }
            },
            dateValue: function() {
                this.form.date = document.getElementById("date-input").value
            },
            dateValue2: function() {
                this.fillItem.date = document.getElementById("dateTwo-input").value
            },
            remarkValue: function() {
                if (!this.form.remark) {
                    this.form.remark = 'N/A'
                }
            },
            remarkValue2: function() {
                if (!this.fillItem.remark) {
                    this.fillItem.remark = 'N/A'
                }
            },
            searchItems: function() {
                let vm = this;
                setTimeout(function() {
                    vm.getVueItems();
                }, 500);
            },
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
            createItem() {
                this.search = '';
                this.form.submit('post', 'projects');
                this.form.filename = '';
                this.defaultData()
                this.changePage(this.pagination.current_page);
            },
            updateItem: function(id) {
                var input = this.fillItem;
                axios.put('projects/' + id, input)
                    .then(function(response) {})
                    .catch(function(response) {})
            },
            deleteItem: function(item) {
                if (confirm("刪除嘍")) {
                    axios.delete('projects/' + item.id)
                        .then(function(response) {
                            this.getVueItems()
                        })
                        .catch(function(response) {})
                    this.changePage(this.pagination.current_page);
                }
            },
            editItem: function(item) {
                this.fillItem.id = item.id;
                this.fillItem.date = item.date;
                this.fillItem.tpl = item.tpl;
                this.fillItem.caseName = item.caseName;
                this.fillItem.designer = item.designer;
                this.fillItem.editor = item.editor;
                this.fillItem.rd = item.rd;
                this.fillItem.link = item.link;
                this.fillItem.ver = item.ver;
                this.fillItem.remark = item.remark;
                this.filename = item.filename;
                this.fillItem.filename = item.filename;
                this.image = '';
                document.getElementById("dateTwo-input").value = item.date;
                this.errorInput.tpl = this.errorInput.date = this.errorInput.caseName = this.errorInput.designer = this.errorInput.editor = this.errorInput.rd = this.errorInput.link = this.errorInput.ver = '';
            },
            defaultData: function() {
                this.urlSort = '2018'
                this.urlRent = 'rent'
                this.urlReady = ''
                this.form.remark = ''
                document.getElementById("date-input").value = ''
                this.errorInput.tpl = this.errorInput.date = this.errorInput.caseName = this.errorInput.designer = this.errorInput.editor = this.errorInput.rd = this.errorInput.link = this.errorInput.ver = '';
            },
            onFileChange(e) {
                let files = e.target.files || e.dataTransfer.files;
                if (!files.length)
                    return;
                this.createImage(files[0]);
            },
            createImage(file) {
                let reader = new FileReader();
                let vm = this;
                reader.onload = (e) => {
                    vm.image = e.target.result;
                };
                reader.readAsDataURL(file);
            },
            upload() {
                this.dateValue()
                this.remarkValue()
                this.errorData()
                if (this.form.caseName) {
                    if (this.image) {
                        let vm = this;
                        axios.post('upload', {
                            image: this.image
                        }).then(function(response) {
                            Vue.set(vm.$data.form, 'filename', response.data.fileName)
                            Vue.set(vm.$data, 'filename', response.data.fileName)
                            vm.uploading = true;
                        }).catch(function(response) {
                            console.log(response)
                        })
                        document.getElementById("upload-file").value = "";

                    } else {
                        this.uploading = true;
                    }
                } else {
                    alert('請完整填入資訊')
                    return false;
                }

            },
            uploadUpdate(id) {
                this.dateValue2()
                this.remarkValue2()
                this.errorData2()
                if (this.fillItem.caseName) {
                    if (this.image) {
                        let vm = this;
                        axios.post('upload', {
                            image: this.image
                        }).then(function(response) {
                            Vue.set(vm.$data.fillItem, 'filename', response.data.fileName)
                            Vue.set(vm.$data, 'filename', response.data.fileName)
                            vm.uploading = true;
                        }).catch(function(response) {})
                        document.getElementById("upload-file").value = "";

                    } else {
                        this.uploading = true;
                    }

                } else {
                    alert('請完整填入資訊')
                    return false;
                }

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
            removelFileEdit() {
                this.filename = ''
                this.fillItem.filename = null
                this.image = ''
            },
            removelFileCreate() {
                this.image = ''
            }
        }
    }
</script>