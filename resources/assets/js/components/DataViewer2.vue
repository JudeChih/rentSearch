<template>
    <div class="data-viewer">
        <div class="search-box">

            <div class="dv-header-search">
                <input v-on:keyup="getVueItems" type="text" name="search" placeholder="Search" v-model="search"/>
                <button type="clear" class="btn btn-clear" @click="clearSearchItem()">清除</button>
            </div>
        </div>
        <button class="btn-create">新增</button>

        <nav class="ctrl-nav">
            <button  aria-label="Previous" class ="ctrl-prev" @click.prevent="changePage(pagination.current_page - 1)"><a href="" v-if="pagination.current_page > 1"></a>上一頁</button>
            <button v-if="pagination.current_page < pagination.last_page" aria-label="Next" class ="ctrl-after" @click.prevent="changePage(pagination.current_page + 1)">下一頁</button>
            <li v-if="pagination.current_page < pagination.last_page">
      </li>
            <ul class="pageination-wrap">
                <li class="is-space"></li>
                <li><button class="ctrl-first" @click.prevent="changePage(pagination.current_page = 1)">最前</button></li>
                <li v-for="page in pagesNumber" v-bind:class="[ page == isActived ? 'active' : '']">
                    <button @click.prevent="changePage(page)">{{ page }}</button>
                </li>
                <li class="is-space"></li>
    
                <li><button class="ctrl-last" @click.prevent="changePage(pagination.current_page = pagination.last_page)">最後</button></li>
            </ul>
        </nav>
        
        <div class="table">
            <div class="row header blue">
                <div class="cell" v-for="titleName in titleNames">
                    <span>{{titleName}}</span>
                </div>
                <div class="cell">
                </div>
      
            </div>
            <div class="row" v-for="row in items">
        
                <div class="cell">
                    {{ row.date }}
                </div>
                <div class="cell">
                    {{ row.tpl }}
                </div>
                <div class="cell">
                    {{ row.caseName }}
                </div>
                <div class="cell">
                    {{ row.designer }}
                </div>
                <div class="cell">
                    {{ row.editor }}
                </div>
                <div class="cell">
                    {{ row.rd }}
                </div>
                <div id="wep1" class="cell url-box">
                    {{ row.link }}
                </div>
                <a v-if="row.filename" href="#0" class="cell diagram-box">
                    <img v-bind:src="'uploads/avatars/' + row.filename " style="max-height: 28px;">
                    <img v-bind:src="'uploads/avatars/' + row.filename " id="showimages" class="diagram-img" style="max-width: 240px; max-height: 140px;">
                </a>
                <a v-else href="#0" class="cell diagram-box">
                    <span>無示意</span>
                </a>
                
                <div class="cell admin-btn">
                    <a href="#" class="btn-close"><i class="fa fa-times-circle" aria-hidden="true" @click.prevent="deleteItem(row)"></i></a>
                    <a href="#" class="btn-edit"><i class="fa fa-pencil-square" aria-hidden="true" @click.prevent="editItem(row)"></i></a>
                </div>
            </div>
        </div>
     
         <div class="float-wrap is-close create-project">
            <div class="edit-box">
                <a href="#" class="float-close"><i class="fa fa-times" aria-hidden="true"></i></a>
                <form method="POST" action="projects" @click="form.errors.clear($event.target.name)" enctype="multipart/form-data" id="form-projects">
                    <div class="input-group">
                        <input type="date" id="myDate" class="input-push" name="date" v-model="form.date" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="date">日期</label>
                        <span class="help is-danger" v-if="form.errors.has('date')" v-text="form.errors.get('date')"></span>

                    </div>

                    <div class="input-group">
                        <input type="text" name="tpl" v-model="form.tpl" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="tpl">TPL</label>
                        <span class="help is-danger" v-if="form.errors.has('tpl')" v-text="form.errors.get('tpl')"></span>
                        
                    </div>

                    <div class="input-group">
                        <input type="text" name="caseName" v-model="form.caseName" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="caseName">專案名稱</label>
                        <span class="help is-danger" v-if="form.errors.has('caseName')" v-text="form.errors.get('caseName')"></span>                        
                    </div>

                    <div class="input-group">
                        <input type="text" name="designer" v-model="form.designer" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="designer">提問/平面</label>
                        <span class="help is-danger" v-if="form.errors.has('designer')" v-text="form.errors.get('designer')"></span>                        
                    </div>
                    <div class="form-group">
                        <label for="editor">切版</label>
                        <v-select :options="opEditor" label="name" v-model="form.editor"></v-select>
                        <span class="help is-danger" v-if="form.errors.has('editor')" v-text="form.errors.get('editor')"></span>                                                    
                    </div>
                    <div class="input-group">
                        <v-select :options="opEditor" label="name" v-model="form.editor"></v-select>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="editor">切版</label>
                        <span class="help is-danger" v-if="form.errors.has('editor')" v-text="form.errors.get('editor')"></span>                        
                    </div>

                    <div class="input-group">
                        <input type="text" name="rd" v-model="form.rd" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="rd">RD</label>
                        <span class="help is-danger" v-if="form.errors.has('rd')" v-text="form.errors.get('rd')"></span>                        
                    </div>

                    <div class="input-group">
                        <input type="text" name="link" v-model="form.link" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="link">檔案路徑</label>
                        <span class="help is-danger" v-if="form.errors.has('link')" v-text="form.errors.get('link')"></span>                        
                    </div>
                </form>
                <form class="upload-form" @submit.prevent="upload()">
                    <div class="input-group">
                        <input type="file" name="avatar" id="upload-file" class="input-push" @change="onFileChange">
                        <img :src="image" class="img-responsive" v-model="form.filename">
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="file">示意</label>
                        <span class="help is-danger" v-if="form.errors.has('image')" v-text="form.errors.get('image')"></span>
                        <span v-if="uploaing">圖片上傳中</span>                    
                    </div>
                    <div class="input-group">
                        <button type="submit" class="btn-submit" :disabled="form.errors.any()">SUBMIT</button>
                    </div>  
                </form>
              
            </div>
        </div>

        <div class="float-wrap is-close update-project">
            <div class="edit-box">
                <a href="#" class="float-close"><i class="fa fa-times" aria-hidden="true"></i></a>
                <form method="POST" action="projects" enctype="multipart/form-data" id="form-projects">
                    <div class="input-group">
                        <input type="date" id="myDate" class="input-push" name="date" v-model="fillItem.date" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="date">日期</label>
                    </div>

                    <div class="input-group">
                        <input type="text" name="tpl" v-model="fillItem.tpl" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="tpl">TPL</label>
                    </div>

                    <div class="input-group">
                        <input type="text" name="caseName" v-model="fillItem.caseName" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="caseName">專案名稱</label>
                    </div>

                    <div class="input-group">
                        <input type="text" name="designer" v-model="fillItem.designer" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="designer">提問/平面</label>                     
                    </div>

                    <div class="input-group">
                        <input type="text" name="editor" v-model="fillItem.editor" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="editor">切版</label>                    
                    </div>

                    <div class="input-group">
                        <input type="text" name="rd" v-model="fillItem.rd" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="rd">RD</label>                     
                    </div>

                    <div class="input-group">
                        <input type="text" name="link" v-model="fillItem.link" required>
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="link">檔案路徑</label>                
                    </div>
                </form>
                <form class="upload-form" @submit.prevent="uploadUpdate(fillItem.id)">
                    <div class="input-group">
                        <input type="file" name="avatar" id="upload-file" class="input-push" @change="onFileChange">
                        <img :src="image" class="img-responsive" v-model="form.filename">
                        <span class="highlight"></span>
                        <span class="bar"></span>
                        <label for="file">示意</label>
                        <span v-if="uploaing">圖片上傳中</span> 
                        <span class="help is-danger" v-if="form.errors.has('image')" v-text="form.errors.get('image')"></span>                        
                    </div>
                    <div class="input-group">
                        <button type="submit" class="btn-submit" :disabled="form.errors.any()">SUBMIT</button>
                    </div>  
                </form>
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
            // alert(response.data.message)
            // alert("新增成功");
            this.errors.clear();

            this.reset();

        }

        onFail(errors) {
            this.errors.record(errors.response.data);
        }

    }

    export default {
        created() {;
            this.changePage(this.pagination.current_page);
        },
        props: ['source'],
        data() {
            return {
                uploaing: false,
                opEditor: [
                    'Chardin',
                    'Quni',
                    'Lisa'
                ],
                titleNames: ['日期', 'TPL', '專案名稱', '提問/平面', '切版', 'RD', '檔案路徑', '示意'],
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
                }),
                search: '',
                offset: 4,
                formErrors: {},
                formErrorsUpdate: {},
                fillItem: {
                    'id': '',
                    'date': '',
                    'tpl': '',
                    'caseName': '',
                    'designer': '',
                    'editor': '',
                    'rd': '',
                    'link': '',
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
        watch: {
            filename: function() {
                if (this.fillItem.id) {
                    this.updateItem(this.fillItem.id)
                    $(".update-project").addClass("is-close");
                } else {
                    this.createItem()
                }
                this.image = '';
                this.uploaing = false;
                this.changePage(this.pagination.current_page);
                alert('已更資料');
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
            createItem() {
                this.search = '';
                this.form.submit('post', 'projects');
                this.form.filename = '';
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
                $(".update-project").removeClass("is-close");
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
            // removeImage: function(e) {
            //     this.avatar = '';
            // },
            upload() {
                if (this.image) {
                    let vm = this;
                    axios.post('upload', {
                        image: this.image
                    }).then(function(response) {
                        Vue.set(vm.$data.form, 'filename', response.data.fileName)
                        Vue.set(vm.$data, 'filename', response.data.fileName)
                    }).catch(function(response) {})
                    this.uploaing = true;
                    document.getElementById("upload-file").value = "";
                } else {
                    this.filename = "nofile"
                }
            },
            uploadUpdate(id) {
                if (this.image) {
                    let vm = this;
                    axios.post('upload', {
                        image: this.image
                    }).then(function(response) {
                        Vue.set(vm.$data.fillItem, 'filename', response.data.fileName)
                        Vue.set(vm.$data, 'filename', response.data.fileName)
                    }).catch(function(response) {})
                    this.uploaing = true;
                    document.getElementById("upload-file").value = "";
                } else {
                    if (this.filename !== "") {
                        this.filename = ""
                    } else {
                        this.filename = "nofile"
                    }
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
            }
        }
    }
</script>