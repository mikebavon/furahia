/**
 * Created by ndikraxx on 8/15/16.
 */

var App = App || {};

App.extend = function (proto, literal) {
    var newLiteral = Object.create(proto);
    Object.keys(literal).forEach(function (k) {
        newLiteral[k] = literal[k];
    });

    return newLiteral;
};

App.Cmp = {
    responseTarget: '',
    httpMethod: 'GET',
    async: true,
    httpUrl: '',
    requestParams: '',
    getEl: function (elId) {
        return document.getElementById(elId);
    },
    updateTarget: function (resp) {
        var me = this;
        me.getEl(me.responseTarget).innerHTML = resp;
    },
    model: [],
    ajaxRequest: function () {
        var me = this;
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function () {

            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    me.updateTarget(xhr.responseText);

                }
            }
        };

        xhr.open(me.httpMethod, me.httpUrl, me.async);
        if (me.requestParams) {
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.send(me.requestParams);
        } else
            xhr.send();
    },
    textareaId: "",

    form: function () {
        var me = this;
        var form = '<div class="row"><div class="' + me.formClass + '"><div class="panel"><div class="panel-heading">'
            + '<h3 class="panel-title">Block styled form</h3></div><form  action = "./fileUpload" method ="POST">  <div class="panel-body">';


        me.model.forEach(function (el) {
            form += '<div class="form-group">' + '<div class="input-group ">'
                + '<div class="input-group-addon"><i class= "' + el.label + '" aria-hidden="true"></i></div>';

            if (el.type == 'text') {

                if (el.readOnly) {
                    form += ' <div class="" id ="' + el.id
                        + 'error"> <input type="' + el.type + '" name="'
                        + el.name + '" class="form-control" id="' + el.id
                        + '" " ' + el.required + '" placeholder="' + el.placeholder + '" readonly>';
                    form += '</div></div></div>';
                }
                else {
                    form += ' <div class="" id ="' + el.id
                        + 'error"> <input type="' + el.type + '" name="'
                        + el.name + '" class="form-control" id="' + el.id
                        + '" " ' + el.required + '" placeholder="' + el.placeholder + '">';
                    form += '</div></div></div>';

                }


            }
            else if (el.type == 'number') {
                form += ' <div class="" id ="' + el.id
                    + 'error"> <input type="' + el.type + '" name="'
                    + el.name + '" class="form-control" id="' + el.id
                    + '" " ' + el.required + '" placeholder="' + el.placeholder + '">';
                form += '</div></div></div>';
            }
            else if (el.type == "file") {
                form += '' +
                    '<script type="text/template" id="qq-template-manual-trigger">' +
                    '<div class="qq-uploader-selector qq-uploader" qq-drop-area-text="Drop Beneficiary image here">' +
                    '<div class="qq-total-progress-bar-container-selector qq-total-progress-bar-container">' +
                    '<div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-total-progress-bar-selector qq-progress-bar qq-total-progress-bar"></div> </div>' +
                    '<div class="qq-upload-drop-area-selector qq-upload-drop-area" qq-hide-dropzone>' +
                    '<span class="qq-upload-drop-area-text-selector"></span>' +
                    '</div>' +
                    '<div class="buttons">' +
                    '<div class="qq-upload-button-selector qq-upload-button">' +
                    ' <div>Image</div>' +
                    '</div>' +
                    ' <button type="button" id="trigger-upload" class="btn btn-primary">' +
                    '<i class="icon-upload icon-white"></i> Upload' +
                    '</button>' +
                    '</div>' +
                    '<span class="qq-drop-processing-selector qq-drop-processing">' +
                    '<span>Processing dropped files...</span>' +
                    '<span class="qq-drop-processing-spinner-selector qq-drop-processing-spinner">' +
                    '</span>' +
                    '</span>' +
                    '<ul class="qq-upload-list-selector qq-upload-list" aria-live="polite" aria-relevant="additions removals">' +
                    '<li>' +
                    '<div class="qq-progress-bar-container-selector">' +
                    '<div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" class="qq-progress-bar-selector qq-progress-bar">' +
                    '</div>' +
                    '</div>' +
                    '<span class="qq-upload-spinner-selector qq-upload-spinner">' +
                    '</span>' +
                    '<img class="qq-thumbnail-selector" qq-max-size="100" qq-server-scale>' +
                    '<span class="qq-upload-file-selector qq-upload-file" id="' + el.name + '">' +
                    '</span>' +
                    '<span class="qq-edit-filename-icon-selector qq-edit-filename-icon" aria-label="Edit filename">' +
                    '</span>' +
                    '<input class="qq-edit-filename-selector qq-edit-filename" tabindex="0" type="text">' +
                    '<span class="qq-upload-size-selector qq-upload-size">' +
                    '</span>' +
                    '<button type="button" class="qq-btn qq-upload-cancel-selector qq-upload-cancel">Cancel</button>' +
                    '<button type="button" class="qq-btn qq-upload-retry-selector qq-upload-retry">Retry</button>' +
                    '<button type="button" class="qq-btn qq-upload-delete-selector qq-upload-delete">Delete</button>' +
                    '<span role="status" class="qq-upload-status-text-selector qq-upload-status-text"></span>' +
                    '</li>' +
                    '</ul>' +
                    '<dialog class="qq-alert-dialog-selector">' +
                    '<div class="qq-dialog-message-selector">' +
                    '</div>' +
                    '<div class="qq-dialog-buttons">' +
                    '<button type="button" class="qq-cancel-button-selector">Close</button>' +
                    '</div>' +
                    '</dialog>' +
                    '<dialog class="qq-confirm-dialog-selector">' +
                    '<div class="qq-dialog-message-selector">' +
                    '</div><div class="qq-dialog-buttons">' +
                    '<button type="button" class="qq-cancel-button-selector">No</button>' +
                    '<button type="button" class="qq-ok-button-selector">Yes</button>' +
                    '</div>' +
                    '</dialog>' +
                    '<dialog class="qq-prompt-dialog-selector">' +
                    '<div class="qq-dialog-message-selector">' +
                    '</div>' +
                    '<input type="text">' +
                    '<div class="qq-dialog-buttons">' +
                    '<button type="button" class="qq-cancel-button-selector">Cancel</button>' +
                    '<button type="button" class="qq-ok-button-selector">Ok</button>' +
                    '</div></dialog>' +
                    '</div>' +
                    '</script>' +
                    '<div id="fine-uploader-manual-trigger"></div>' +
                    '</div><br>';
            }
            else if (el.type == "email") {
                form += ' <div class="" id ="' + el.id
                    + 'error"> <input type="' + el.type + '" name="'
                    + el.name + '" class="form-control" id="' + el.id
                    + '" " ' + el.required + '" placeholder="' + el.placeholder + '">';
                form += '</div></div></div>';
            }
            else if (el.type == 'textarea') {

                form += ' <div class="" id ="' + el.id
                    + 'error"> <textarea id="' + el.id + '" name ="' + el.name + '" class="form-control mceAdvanced"'
                    + ' placeholder="' + el.placeholder + '" rows= "' + el.rows + '">';
                form += '</textarea></div></div>';
                me.textareaId = el.id;

            }
            else if (el.type == 'select') {
                form += '<select class="form-control" id ="' + el.id + '" name ="' + el.name + '">';
                el.options.forEach(function (opt) {
                    form += '<option value="' + opt.value + '">' + opt.name + '</option>';
                });
                form += '</select></div></div>';
            }
            else if (el.type == 'date') {
                form += ' <div class="input-group date" '
                    + '><input type="text" class="form-control"'
                    + ' placeholder="' + el.placeholder + '" id="dob" name="' + el.name + '"/>' +
                    ' <span class="input-group-addon">' +
                    '<span class="glyphicon glyphicon-calendar"></span>'
                    + '</span>';
                form += '</div></div> <br>';

            }
            else if (el.type == "password") {
                form += ' <div class="" id ="' + el.id
                    + 'error"> <input type="' + el.type + '" name="'
                    + el.name + '" class="form-control" id="' + el.id
                    + '" " ' + el.required + '" placeholder="' + el.placeholder + '">';
                form += '</div></div></div>';
            }
            else if (el.type == "hidden") {
                form += ' <div class="" id ="' + el.id
                    + 'error"> <input type="' + el.type + '" name="'
                    + el.name + '" class="form-control" id="' + el.id
                    + '">';
                form += '</div></div></div>';
            }


        });
        form += '<span class="text-danger" id="error-log"></span></div></form><a class="btn btn-success" id="'
            + me.formId + '-save">Save</a><br><br>';

        me.updateTarget(form);


        if (me.getEl(me.responseTarget).innerHTML = form) {


            me.model.forEach(function (el) {
                if (el.type == "file") {
                    var manualUploader = new qq.FineUploader({
                        element: document.getElementById('fine-uploader-manual-trigger'),
                        template: 'qq-template-manual-trigger',
                        request: {
                            endpoint: './fileUpload'
                        },
                        validation: {
                            allowedExtensions: ['jpeg', 'jpg', 'gif'],
                            itemLimit: 1,
                            sizeLimit: 5120000 // 50 kB = 50 * 1024 bytes
                        },
                        autoUpload: false,
                        debug: true
                    });
                    //setting up the file selector plugin
                    qq(document.getElementById("trigger-upload")).attach("click", function () {
                        var val = document.getElementById(el.id).innerHTML
                        var newVal = me.getEl(el.id).value = val

                        manualUploader.uploadStoredFiles();
                    });
                }
                else if (el.type == "textarea") {
                    CKEDITOR.replace(me.textareaId);
                }
                else if (el.type == "date") {
                    $(function () {
                        $('#dob').datetimepicker({
                            pickTime: false,
                            format: 'yyyy-mm-dd'
                        });
                    });
                }

            });

            //Setting up the text Editor


            //Setting up the date-time picker plugin

        }

        if (me.modelId == "donor") {

            me.getEl("email").value = sessionStorage.getItem("email");
            me.getEl("id").value = sessionStorage.getItem("id");
        }

        me.getEl(me.formId + '-save').addEventListener("click", function () {

            me.validateNull();
            me.validateLength();
            me.validateNumber();
            me.validateRepeatedPassword();
            me.validateEmail();

            me.submit();
        });

    },

    //Overrideable property that stores the total count of JSON records
    jsonListCount: "",
    //Function to override the property jsonListCount with the count of the JSON records
    modelListCount: function () {
        var me = this;
        me.ajaxRequest.call({
            httpMethod: me.httpMethod,
            httpUrl: me.httpUrl + "/list",
            updateTarget: function (resp) {
                var json = JSON.parse(resp);
                me.jsonListCount = json.count;

            }
        });
    },
    // Default Pagination start value. Will be overridden when the page numbers are clicked
    start: 0,
    // Default Pagination limit value. Will be overridden when the limit is changed
    limit: 10,
    //Pagination function to load the contents of the first page;
    firstPage: function () {
        var me = this;
        me.start = 0;
        me.tableView();
    },
    //Pagination function to load the contents of the last page;
    lastPage: function () {
        var me = this;
        var pageNumber = Math.ceil(parseInt(me.jsonListCount) / me.limit);
        me.start = me.limit * (pageNumber - 1);
        me.tableView();
    },
    tableView: function () {
        var me = this;
        var table = '<div class="panel">';
        me.ajaxRequest.call({
            httpMethod: me.httpMethod,
            httpUrl: me.httpUrl + "/list?start=" + me.start + "&limit=" + me.limit,
            responseTarget: me.responseTarget,

            updateTarget: function (resp) {
                me.modelListCount();
                var json = JSON.parse(resp);

                if(me.modelId!='donor'){
                    table += '<div class="panel-heading">'
                        + '<h3 class="panel-title">' + me.modelId + '  Table</h3>'
                        + '</div><br>'
                        + '<div><p>&nbsp; &nbsp;<button class="btn btn-primary btn-large glyphicon glyphicon-plus" id="add"> Add</button>'
                        + '<button class="btn btn-warning large glyphicon glyphicon-print" id="print"> Print</button></div></p>'
                        + '<div id="demo-custom-toolbar" class="table-toolbar-left">';

                }
                else{

                    table += '<div class="panel-heading">'
                        + '<h3 class="panel-title">' + me.modelId + '  Table</h3>'
                        + '</div><br>'
                        + '<div><p>&nbsp; &nbsp;'
                        + '<button class="btn btn-warning large glyphicon glyphicon-print" id="print"> Print</button></div></p>'
                        + '<div id="demo-custom-toolbar" class="table-toolbar-left">';

                }
                   table+= '</div><hr>' +
                    '<h3 class="panel-title">Show  ' +
                    '<select id="limit">' +
                    '<option name="10" value =10>10</option>' +
                    '<option name="25" value =25>25</option>' +
                    '<option name="50" value =50>50</option>' +
                    '<option name="100" value =100>100</option>' +
                    '</select>' +
                    '  records per page</h3>' +
                    '<div class="panel-body">' +
                    '<div class = "row"><div class="col-lg-11 col-sm-11">'
                    + '<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">'
                    + '<thead>'
                    + '<tr>';
                me.model.forEach(function (el) {
                    if (el.table) {
                        table += '<th class="min-tablet">' + el.table + '</th>';
                    }
                });
                table += '<th>See More</th>' +

                    '</tr>' +
                    '</thead>' +
                    '<tbody>';
                json.list.forEach(function (el) {
                    table += '<tr>';
                    me.model.forEach(function (model) {

                        if (model.table) {
                            if (model.modelObject == "address") {
                                table += '<td>' + el.address[model.name] + '</td>';
                            }
                            else if (model.modelObject == "person") {
                                table += '<td>' + el.person[model.name] + '</td>';
                            }
                            else if (model.modelObject == "charityOrg") {
                                table += '<td>' + el.charityOrg[model.column_name] + '</td>';
                            }
                            else {
                                table += '<td>' + el[model.name] + '</td>';
                            }
                        }
                    });
                    table += '<td><a id="load-' + el.id + '" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-eye-open"></span></a></td>';

                })
                table +=
                    '</tr></tbody></table> ' +
                    '</div></div>' +
                    '<h3 class="panel-title">Existing  ' + me.modelId + '  Table records  <span class="badge">' + me.jsonListCount + '</span></h3>' +

                    '<nav aria-label="...">';
                  var endRange =   parseInt(me.start)+parseInt(me.limit);
                var startRange = me.start;
                  table+=  '<p> Showing from  '+startRange+' - '+endRange+'</p>'+
                    ' <ul class="pagination">' +
                    '<li class="page-item ">' +
                    '<a class="page-link" id="first-page" tabindex="-1" aria-label="Previous">' +
                    '   <span aria-hidden="true">&laquo;</span>' +
                    '<span class="sr-only">Previous</span>' +
                    '    </a>' +
                    '<li class="page-item " id="page-inactive-1">' +
                    '  <a class="page-link" id="page-1">1</a>' +
                    ' </li>';
                for (var i = 2; i <= Math.ceil(parseInt(me.jsonListCount) / me.limit); i++) {
                    table += '<li class="page-item" id="page-inactive-' + i + '"><a class="page-link" id="page-' + i + '" >' + i + '</a></li>';


                }

                table += '<li class="page-item">' +
                    ' <a class="page-link" id="last-page" aria-label="Next">' +
                    ' <span aria-hidden="true">&raquo;</span>' +
                    '<span class="sr-only">Next</span>' +
                    '</a>' +
                    '  </li>' +
                    ' </ul>' +
                    '  </nav>' +
                    '</div></div>';

                //Load the table
                me.getEl('ajax-content').innerHTML = table;
                //Adding Event Listeners to DOM element after  the table is loaded
                if (me.getEl('ajax-content').innerHTML = table) {

                    //Setting the Pagination Size/Limit
                    me.getEl("limit").addEventListener("change", function () {
                        var limitVal = me.getEl("limit").value;
                        me.limit = limitVal;
                        me.tableView();

                        me.getEl("limit").value = limitVal;

                    });

                    var pageArray = [];
                    //Storing the Page Numbers in the Array
                    for (var i = 1; i <= Math.ceil(parseInt(me.jsonListCount) / me.limit); i++) {
                        var pageId = 'page-' + i;
                        pageArray.push(pageId);

                    }
                    //Looping through the  pageArray and adding Event Listeners to the page Numbers
                    pageArray.forEach(function (el) {
                        me.getEl(el).addEventListener("click", function () {
                            var arr = el.split("-");
                            var pageNumber = arr[arr.length - 1]
                            me.start = me.limit * (pageNumber - 1);
                            me.tableView();
                            me.getEl("page-inactive-" + pageNumber).setAttribute("class", "active");
                            me.getEl(el).innerHTML = '<li class="page-item active">' +
                                '  <a class="page-link" id="' + el + '">' + pageNumber + '<span class="sr-only">(current)</span></a>' +
                                ' </li>';
                            me.getEl("limit").value = me.limit;
                        });
                    });
                    //Loading the Contents of the First Page
                    me.getEl("first-page").addEventListener("click", function () {
                        me.firstPage();
                    });
                    //Loading the contents of the Last Page
                    me.getEl("last-page").addEventListener("click", function () {
                        me.lastPage();
                    });
                    //Redirecting to the form when user clicks the Add button
                    if(me.modelId!='donor'){
                        me.getEl("add").addEventListener("click", function () {
                            me.form();
                        });
                    }
                    //Redirection to the Load page when the user clicks the Load Button
                    json.list.forEach(function (el) {
                        me.getEl("load-" + el.id).addEventListener("click", function () {
                            me.load(el.id);
                        });
                    })
                }

            }
        });
    },
    loadUserDetails: function (){
        donorModal.load(sessionStorage.getItem("donorId"));
    },

    load: function (id) {
        var me = this;
        var loadedId = id;
        var edit = 'edit-' + loadedId;
        var del = 'del-' + loadedId;
        me.ajaxRequest.call({
            httpMethod: me.httpMethod,
            httpUrl: me.httpUrl + "/load/" + id,
            responseTarget: me.responseTarget,

            updateTarget: function (resp) {
             //   console.log(resp)
                var json = JSON.parse(resp);
                var jsonObject = new Object(json);
                var div = '<div class ="row">' +
                    '<div class ="col-sm-9  col-sm-offset-1">' +

                    '<div class = "panel">' +
                    '<div class = "panel-heading">' +
                    '<h4 class="panel-title">Showing More Info for the selected ' + me.modelId + '</h4> ' +
                    '</div><br>' +
                    '<div class="panel-body">' +
                    '<table class="table table-responsive">' +
                    '<tbody>';

                for (var keys in jsonObject) {
                    div += '<tr>';
                    if (keys == 'address') {
                        var newObject = new Object(jsonObject.address);

                        for (var addresskeys  in newObject) {
                            div += '<td><strong>' + addresskeys + '</strong></td><td>' + newObject[addresskeys] + '</td></tr>';
                        }

                    }
                    else if (keys == 'person') {
                        var newObject = new Object(jsonObject.person);

                        for (var newkeys  in newObject) {
                            div += '<td><strong>' + newkeys + '</strong></td><td>' + newObject[newkeys] + '</td></tr>';
                        }

                    }
                    else if (keys == 'charityOrg') {
                        var newObject = new Object(jsonObject.charityOrg);

                        for (var newkeys  in newObject) {
                            div += '<td><strong>' + newkeys + '</strong></td><td>' + newObject[newkeys] + '</td></tr>';
                        }

                    }
                    else {
                        div += '<td><strong>' + keys + '</strong></td><td>' + jsonObject[keys] + '</td></tr>';
                    }


                    div += '</tr>';
                }


                div += '</tbody></table></div>' +
                    '<hr><div class ="row text-center">' +
                    '<a class="btn btn-success" id ="' + edit + '">Edit  <i class="fa fa-pencil" aria-hidden="true"></i></a>' +
                    '<a class="btn btn-danger" id ="' + del + '">Delete  <i class="fa fa-trash" aria-hidden="true"></i></a>' +
                    '<hr><br>' +
                    '</div></div>' +
                    '</div></div>';
                me.getEl(me.responseTarget).innerHTML = div;
                if (me.getEl(me.responseTarget).innerHTML = div) {
                    me.getEl(edit).addEventListener("click", function () {

                        me.editRecord(loadedId);
                    });
                    me.getEl(del).addEventListener("click", function () {
                        me.deleteRecord(loadedId);
                    });
                }
            }

        });


    },


    deleteRecord: function (id) {
        var me = this;
        me.ajaxRequest.call({
            httpMethod: 'DELETE',
            httpUrl: me.httpUrl + "/delete/" + id,
            responseTarget: 'ajax-content',
            updateTarget: function () {
                me.tableView();
            }
        });

    },
    editRecord: function (id) {
        var me = this;

        me.ajaxRequest.call({
            httpMethod: me.httpMethod,
            httpUrl: me.httpUrl + '/load/' + id,
            responseTarget: me.responseTarget,
            updateTarget: function (resp) {
                var json = JSON.parse(resp);
                var jsonObject = new Object(json);
                me.form();
                for (var keys in jsonObject) {
                    me.model.forEach(function (el) {

                        if (el.name == keys && !el.modelObject) {

                            me.getEl(el.id).value = jsonObject[keys];
                        }
                        else if (keys == 'address') {
                            var newObject = new Object(jsonObject.address);
                            for (var newKeys in newObject) {
                                if (el.name == newKeys) {
                                    me.getEl(el.id).value = newObject[newKeys];
                                }
                            }
                        }
                        else if (keys == 'person') {
                            var newObject = new Object(jsonObject.person);
                            for (var newKeys in newObject) {
                                if (el.name == newKeys) {
                                    me.getEl(el.id).value = newObject[newKeys];
                                }
                            }
                        }
                    })
                }
            }
        });
    },
    submit: function () {
        var me = this;
        //checks whether the array includes false. If so it does not submit the
        var booleanLength = validateLengthArray.indexOf(false);
        var booleanNumber = isNumber.indexOf(false);
        var booleanNull = isNull.indexOf(true);
        var booleanEmail = isEmail.indexOf(false);
        var booleanPassword = isPassword.indexOf(false);
        if (booleanNull == -1  &&booleanLength == -1 && booleanNumber == -1 && booleanPassword == -1 && booleanEmail == -1) {

            var otherObj = [];
            var addressObject = [];
            var personObject = [];
            var charityOrgObject = [];
            var userAuthObject = [];
            var formValues = me.model.filter(function (el) {
                var formEl = me.getEl(el.id);
                if (formEl && formEl.value)
                    return el;
            }).map(
                function (el) {
                    if (el.modelObject == "address") {
                        var formEl = me.getEl(el.id);
                        var address = '"' + encodeURIComponent(el.name) + '" : '
                            + JSON.stringify(formEl.value);
                        addressObject.push(address)
                        return addressObject;

                        var address = '"' + encodeURIComponent(el.name) + '" : '
                            + JSON.stringify(formEl.value);
                        addressObject.push(address)


                    }

                    else if (el.modelObject == "person") {
                        var formEl = me.getEl(el.id);

                        var person = '"' + encodeURIComponent(el.name) + '" : '
                            + JSON.stringify(formEl.value);
                        personObject.push(person);

                        return personObject;
                    }
                    else if (el.modelObject == "charityOrg") {
                        var formEl = me.getEl(el.id);

                        var charity = '"' + encodeURIComponent(el.name) + '" : '
                            + parseInt(formEl.value);
                        charityOrgObject.push(charity);

                        return charityOrgObject;
                    }
                    else if (el.modelObject == "userAuth") {
                        var formEl = me.getEl(el.id);

                        var userAuth = '"' + encodeURIComponent(el.name) + '" : '
                            + parseInt(formEl.value);
                        userAuthObject.push(userAuth);

                        return userAuthObject;
                    }
                    else if (el.modelObject == null) {
                        var formEl = me.getEl(el.id);
                        if (!el.transient) {
                            var other = '"' + encodeURIComponent(el.name) + '" : '
                                + JSON.stringify(formEl.value);
                            otherObj.push(other);
                            return other;
                        }

                    }
                }).join(', ');
            var response;
            if (me.modelObjectArray.indexOf("charityOrg") !=-1 && me.modelObjectArray.indexOf("person")!=-1) {
                var charity = '"charityOrg" : {' + charityOrgObject + '}';
                var person = '"person" : {' + personObject + '}';
                otherObj.push(person);
                otherObj.push(charity);
                response = otherObj;
            }
            else if (me.modelObjectArray.indexOf("person")!=-1 && me.modelObjectArray.indexOf("address")!=-1
                && me.modelObjectArray.indexOf("userAuth")!=-1) {
                var address = '"address" : {' + addressObject + '}';
                var userAuth = '"userAuth" : {' + userAuthObject + '}';
                var person = '"person" : {' + personObject + '}';
                otherObj.push(person);
                otherObj.push(userAuth);
                otherObj.push(address);
                response = otherObj;
            }
            else if (me.modelObjectArray.indexOf("person")!=-1 && me.modelObjectArray.indexOf("address")!=-1) {
                var address = '"address" : {' + addressObject + '}';

                var person = '"person" : {' + personObject + '}';
                otherObj.push(person);
                otherObj.push(address);
                response = otherObj;
            }


            else if (me.modelObjectArray.indexOf("person")!= -1) {
                var person = '"person" : {' + personObject + '}';
                otherObj.push(person);
                response = otherObj;
            }
            else if (me.modelObjectArray.indexOf("charityOrg")!=-1) {
                var charity = '"charityOrg" : {' + charityOrgObject + '}';
                otherObj.push(charity);
                response = otherObj;
            }
            else if (me.modelObjectArray.indexOf("address")!=-1) {
                var address = '"address" : {' + addressObject + '}';
                otherObj.push(address);
                response = otherObj;

            }
            else {

                response = otherObj;
            }
            var params = "{" + response + "}"
            me.ajaxRequest.call({
                httpMethod: 'POST',
                httpUrl: me.httpUrl + "/save",
                requestParams: params,
                responseTarget: me.responseTarget,
                updateTarget: function (resp) {

                    var json = JSON.parse(resp);
                    var objectJSON = new Object(json);
                    //objects that redirect after successful submission of data
                    if (me.redirectTo) {
                        //error in login
                        if (resp == "{}") {
                            me.getEl("error-log").innerHTML = "Error! <br> Username and passwords do not match";
                        }
                        // successful login
                        else {
                            if (me.modelId = "login") {
                                sessionStorage.setItem("id", objectJSON.id);
                                sessionStorage.setItem("email", objectJSON.username);
                                window.location = me.redirectTo;
                                // me.checkDetailsOnLogin(sessionStorage.getItem("id"));
                            }

                        }

                    }
                    //objects that show the new data after successful submission of data
                    else {
                        // Ensures that the homepage does not load table view after submission
                       var url   = (window.location.href).split("/");
                       var lastUrl = url[url.length -1];
                        if (lastUrl == "home.jsp"){
                            //REQUIRES AN ALERT OR A PROMPT TO CONFIRM THE ACTIONS OF THE USER
                          window.location = "home.jsp";
                        }
                        else{
                            me.tableView();
                        }

                    }

                }
            });
            Messages.formSuccess();
        }
        else {
            Messages.formError()
        }
    },
    setIdOnLogin: function () {
        var me = this;
        if (sessionStorage.getItem("id"))
            me.checkDetailsOnLogin();
        else {
            me.getEl("data-display").innerHTML="";
        }

    },

    checkDetailsOnLogin: function (id) {
        var me = this;
        me.ajaxRequest.call({
            httpUrl: "./rest/donor/auth/" + sessionStorage.getItem("id"),
            httpMethod: "GET",
            responseTarget: me.responseTarget,
            updateTarget: function (resp)
            {


                var json = JSON.parse(resp);
                var objectJSON = new Object(json);

                //Registered user but not a registered donor;
                if (parseInt(objectJSON.count) == 0) {
                    donor.form();
                }


                else if (parseInt(objectJSON.count) == 1) {

                  var listObject = new Object(objectJSON.list);
                    listObject.forEach(function (el){
                        sessionStorage.setItem("donorId", el.id);
                    });

                    
                    me.getEl("data-display").innerHTML = '<section class="wrapper-lg">' +
                        '<div class="container">' +
                        '<div class="row">' +
                        '<div class="col-sm-12">' +
                        '<div class="widget padding-lg bg-dark">' +
                        ' <h1 class="heading-lg text-center text-light">Support a Kid in Need</h1>' +
                        ' <h4 class="heading-lg text-center text-light">Search and Touch the Life of a Child</h4>' +

                        '<p>{Search form for children comes here}</p>' +
                        ' </div>' +
                        '  </div>' +
                        ' </div>' +
                        ' </div>' +
                        '</section>';


                }
            }
        });


    },
    showCharityOrg: function (){
        var me = this;
        me.ajaxRequest.call({
            httpMethod: "GET",
            httpUrl: "./rest/charityorg/list",
            responseTarget: 'charityorg-content',
            updateTarget: function (resp) {
                var json = JSON.parse(resp);
                var objectJSON = new Object(json);

                var div = ' <div class="row">';

                objectJSON.list.forEach(function (el) {
                    div += '<div class="col-sm-6 col-md-3">' +
                        '<div class="thumbnail">' +
                        '<div class="overlay-container">' +
                      /*  '<img src="benImage/'+ddf+'" width ="250px" height ="250px">' +*/
                        '<div class="overlay-content">' +
                        '<h3 class="h4 headline">' + el.name + '</h3>' +
                        ' <p>So you know you\'re getting a top quality property from an experienced team.</p>' +
                        '</div><!-- /.overlay-content -->' +
                        ' </div><!-- /.overlay-container -->' +
                        ' <div class="thumbnail-meta">' +
                        ' <p><i class="fa fa-fw fa-user"></i>' + el.address.town + '</p>' +
                        '<p><i class="fa fa-fw fa-institution"></i>' + el.address.road + '</p>' +
                        '<p><i class="fa fa-fw fa-institution"></i>' + el.address.email + '</p>' +
                        '<p><i class="fa fa-fw fa-institution"></i>' + el.address.website + '</p>' +
                        '<p><i class="fa fa-fw fa-institution"></i>' + el.address.postalAddress + ' '+ el.address.postalAddress + '</p>' +
                        ' </div>' +
                        ' <div class="thumbnail-meta">' +
                        ' <i class="fa fa-fw fa-"></i> <span class="h3"></span> <a href="seemore_institution.jsp" class="btn btn-link pull-right" id="' + el.id + '">View <i class="fa fa-arrow-right"></i></a>' +
                        '</div>' +
                        '</div>' +
                        '</div>';

                });
                me.getEl('charityorg-content').innerHTML = div;
                if (me.getEl('charityorg-content').innerHTML = div) {
                    objectJSON.list.forEach(function (el) {
                        me.getEl(el.id).addEventListener("click", function () {
                            //set session to store the charity Org  id
                            sessionStorage.setItem("charityOrgId", el.id);
                            me.loadCharityOrgView();
                        })
                    })
                }
            }
        })

    },
    loadCharityOrgView: function () {

        var me = this;
        me.ajaxRequest.call({
            httpUrl: "./rest/charityorg/load/" + sessionStorage.getItem("charityOrgId"),
            httpMethod: "GET",
            updateTarget: function (resp) {
                var div = '<div class="row bg-light  text-center">';
                var json = JSON.parse(resp);
                var object = new Object(json);
                div +=

                    '<div class="col-lg-12 bg-light" >' +
                    '<br>' +
                    '<h2 class = "text-center">More info about <b>'+object.name+'</b></h2>' +
                    '</div>' +
                    '</div>'+
                    '<br>' +

                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h3 class="panel-title"> Address</h3>' +
                    '</div>' +
                    '<div class="panel-body">' +
                    '<table class="table table-responsive">' +
                    '<tbody>' +
                    '<tr><td><strong>Town:</strong></td><td>' + object.address.town + '</td></tr>' +
                    '<tr><td><strong>Estate:</strong></td><td>' + object.address.estate + '</td></tr>' +
                    '<tr><td><strong>Road, Building:</strong></td><td>' + object.address.road + ', ' + object.address.building + '</td></tr>' +
                    '<tr><td><strong>Email: </strong></td><td>' + object.address.email + '</td></tr>' +
                    '<tr><td><strong>Phone :</strong></td><td>' + object.address.cellPhone + '</td></tr>' +
                    '<tr><td><strong>Phone 2:</strong></td><td>' + object.address.fixedPhone + '</td></tr>' +
                    '<tr><td><strong>Postal Address: </strong></td><td>' + object.address.postalAddress + ' - ' + object.address.postalCode + '</td></tr>' +
                    '<tr><td><strong>Website</strong></td><td>' + object.address.website + '</td></tr>' +
                    '</tbody>' +
                    '</table>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +

                    '<br>' +
                    '<div class = "row"' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h3 class="panel-title"> The Story of '+object.name+'</h3>' +
                    '</div>' +
               '<div class="panel-body">' +
                    '<p> ' + object.descr + '</p>' +
                    '<div class="text-center"><a class = "btn btn-primary btn-lg text-center" href ="institutions.jsp"> Go Back</a></div>' +
                    '</div>' +
                    '</div>' +
                    '</div>';


                me.getEl("seemore-content").innerHTML = div;
            }


        })
    },

    showBeneficiaries: function () {
        var me = this;
        me.ajaxRequest.call({
            httpMethod: "GET",
            httpUrl: "./rest/beneficiary/list",
            responseTarget: 'beneficiary-content',
            updateTarget: function (resp) {
                var json = JSON.parse(resp);
                var objectJSON = new Object(json);

                var div = ' <div class="row">';

                objectJSON.list.forEach(function (el) {
                    div += '<div class="col-sm-6 col-md-3">' +
                        '<div class="thumbnail">' +
                        '<div class="overlay-container">' +
                        '<img src="benImage/' + el.person.imageName + '" width ="250px" height ="250px">' +
                        '<div class="overlay-content">' +
                        '<h3 class="h4 headline">' + el.person.surname + '  ' + el.person.firstName + '</h3>' +
                        ' <p>So you know you\'re getting a top quality property from an experienced team.</p>' +
                        '</div><!-- /.overlay-content -->' +
                        ' </div><!-- /.overlay-container -->' +
                        ' <div class="thumbnail-meta">' +
                        ' <p><i class="fa fa-fw fa-user"></i>' + el.person.gender + '</p>' +
                        '<p><i class="fa fa-fw fa-institution"></i>' + el.charityOrg.name + '</p>' +
                        ' </div>' +
                        ' <div class="thumbnail-meta">' +
                        ' <i class="fa fa-fw fa-"></i> <span class="h3"></span> <a href="seemore.jsp" class="btn btn-link pull-right" id="' + el.id + '">View <i class="fa fa-arrow-right"></i></a>' +
                        '</div>' +
                        '</div>' +
                        '</div>';

                });
                me.getEl('beneficiary-content').innerHTML = div;
                if (me.getEl('beneficiary-content').innerHTML = div) {
                    objectJSON.list.forEach(function (el) {
                        me.getEl(el.id).addEventListener("click", function () {
                            //set session to store the beneficiary id
                            sessionStorage.setItem("benId", el.id);
                            me.loadBeneficiaryView();
                        })
                    })
                }
            }
        })

    },

    loadBeneficiaryView: function () {
        var me = this;
        me.ajaxRequest.call({
            httpUrl: "./rest/beneficiary/load/" + sessionStorage.getItem("benId"),
            httpMethod: "GET",
            updateTarget: function (resp) {
                var div = '<div class="row bg-light  text-center">';
                var json = JSON.parse(resp);
                var object = new Object(json);
                div += '<h1>    Support ' + object.person.firstName + ' ' + object.person.surname + '  ' + object.person.lastName + '</h1>' +
                    '</div> <br>' +
                    '<div class = "row">' +
                    '<div class="col-lg-6 bg-light" >' +
                    '<br>' +
                    '<div class = " text-center">' +
                    '<img  class = "img-circle" height="300px" width="300px" src ="benImage/' + object.person.imageName + '" "/>' +
                    '</div>' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h4 class="panel-title"> Quick Profile </h4>' +
                    '</div>' +
                    '<div class="panel-body">' +
                    '<table class="table table-responsive">' +
                    '<tbody>' +
                    '<tr><td><strong>First Name:</strong></td><td>' + object.person.firstName + '</td></tr>' +
                    '<tr><td><strong>Surname:</strong></td><td>' + object.person.surname + '</td></tr>' +
                    '<tr><td><strong>Last Name:</strong></td><td>' + object.person.lastName + '</td></tr>' +
                    '<tr><td><strong>Gender</strong></td><td>' + object.person.gender + '</td></tr>' +
                    '<tr><td><strong>Nationality:</strong></td><td>' + object.person.nationality + '</td></tr>' +
                    '</tbody>' +
                    '</table>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<div class="col-lg-1"></div>' +
                    '<div class="col-lg-5 bg-light" >' +
                    '<br>' +
                    '<h2 class = "text-center">More info</h2>' +
                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h3 class="panel-title"> Institution </h3>' +
                    '</div>' +
                    '<div class="panel-body">' +
                    '<h4><strong>' + object.charityOrg.name + '</strong></h4>' +
                    '</div>' +
                    '</div>' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h3 class="panel-title"> Address</h3>' +
                    '</div>' +
                    '<div class="panel-body">' +
                    '<table class="table table-responsive">' +
                    '<tbody>' +
                    '<tr><td><strong>Town:</strong></td><td>' + object.charityOrg.address.town + '</td></tr>' +
                    '<tr><td><strong>Estate:</strong></td><td>' + object.charityOrg.address.estate + '</td></tr>' +
                    '<tr><td><strong>Road, Building:</strong></td><td>' + object.charityOrg.address.road + ', ' + object.charityOrg.building + '</td></tr>' +
                    '<tr><td><strong>Email: </strong></td><td>' + object.charityOrg.address.email + '</td></tr>' +
                    '<tr><td><strong>Phone :</strong></td><td>' + object.charityOrg.address.cellPhone + '</td></tr>' +
                    '<tr><td><strong>Phone 2:</strong></td><td>' + object.charityOrg.address.fixedPhone + '</td></tr>' +
                    '<tr><td><strong>Postal Address: </strong></td><td>' + object.charityOrg.address.postalAddress + ' - ' + object.charityOrg.postalCode + '</td></tr>' +
                    '<tr><td><strong>Website</strong></td><td>' + object.charityOrg.address.website + '</td></tr>' +
                    '</tbody>' +
                    '</table>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<br>' +
                    '<div class = "row"' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class = "panel-heading bg-gray-dark">' +
                    '<h3 class="panel-title"> The Story of ' + object.person.surname + ' ' + object.person.firstName + ' </h3>' +
                    '</div>' +
                    '<div class="panel-body">' +
                    '<p> ' + object.person.notes + '</p>' +

                    '<div class="text-center"><a class = "btn btn-primary btn-lg text-center" href ="support.jsp">Support ' + object.person.surname + '</a></div>' +
                    '</div>' +
                    '</div>' +
                    '</div>';


                me.getEl("seemore-content").innerHTML = div;
            }


        });

    },
    supportView: function () {
        var me = this;
        me.ajaxRequest.call({
            httpMethod: "GET",
            httpUrl: "./rest/beneficiary/load/" + sessionStorage.getItem("benId"),
            updateTarget: function (resp) {
                var json = JSON.parse(resp);
                var object = new Object(json);
                var div = '<div class="row">' +
                    '<div class="col-lg-12 bg-light">' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class="panel-heading bg-gray">' +
                    '<h3 class ="panel-title text-center">You can support ' + object.person.firstName + ' ' + object.person.surname + '  ' + object.person.lastName + '' +
                    '  in many ways. </h3></div><br>' +
                    '<h4 class="text-center">A simple donation will go a long way in aiding the child\'s development.<br>' +
                    'Chooose one or more of the following areas and pledge support' +
                    'Process comes here  ' +
                    '..<br>' +
                    '..<br>' +
                    '..<br>' +
                    '..<br>' +
                    '..<br>' +
                    '..<br>' +
                    '</h4>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '<br>' +
                    '<div class = "row ">' +
                    '<div class = "col-md-4 col-sm-4 bg-light">' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class="panel-heading bg-gray">' +
                    '<h2 class ="panel-title text-center"><strong>1.</strong> Select an area to support below</h2></div><br>' +
                    '<div class="panel-body">' +
                    '<select class="form-control" id="supportOption">' +
                    '<option name="schoolFees" value="School Fees">School Fees</option>' +
                    '<option name="food" value="food">Food</option>' +
                    '<option name="books" value="books">Books</option>' +
                    '<option name="clothing" value="clothing">Clothing</option>' +
                    '<option name="other" value="other">Other</option>' +
                    '</select>' +
                    '</div>' +
                    '</div>' +

                    '</div>' +



                    '<div class = "col-md-4 col-sm-4 bg-light">' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class="panel-heading bg-gray">' +
                    '<h2 class ="panel-title text-center"><strong>2.</strong> Set an amount</h2></div><br>' +
                    '<div class="panel-body">' +

                    '<input type="number" name="amount" id ="supportAmount" required class="form-control">' +

                    '</div>' +
                    '</div>' +

                    '</div>' +


                    '<div class = "col-md-4 col-sm-4 bg-light">' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class="panel-heading bg-gray">' +
                    '<h2 class ="panel-title text-center"><strong>3.</strong>Notification Period in Days</h2></div><br>' +
                    '<div class="panel-body">' +
                    '<input type="number" name="notification"  id="notificationPeriod"required class="form-control" placeholder="Notify me after ---- days">'  +

                    '</div>' +
                    '</div>' +

                    '</div>' +
                    '</div>' +
                    '<br>' +
                    '<br>' +


                    '<div class = "row ">' +
                    '<div class = "col-md-12 col-sm-12 bg-light text-center">' +
                    '<br>' +
                    '<div class = "panel">' +
                    '<div class="panel-heading bg-gray">' +
                    '<h2 class ="panel-title text-center"><strong>3.</strong>Save Pledge Settings </h2></div><br>' +
                    '<div class="panel-body">' +
                    '<a href ="#" id="commitPledge" class="btn btn-lg btn-info" >    Commit my Pledge    </a>'+

                    '</div>' +
                    '</div>' +

                    '</div>' +
                    '</div>' +
                    '' +
                    '' +
                    '' +
                    '' +
                    '';


                me.getEl("support-content").innerHTML = div;

               if (me.getEl("support-content").innerHTML = div) {
                   me.getEl("commitPledge").addEventListener("click", function (){
                       var supportArea = me.getEl("supportOption").value;
                       var amount = me.getEl("supportAmount").value;
                       var notification = me.getEl("notificationPeriod").value;
                     //JSON response for pledges form
                       var params = '{"amount" :'+amount+ ', '+
                          '"notificationPeriod": '+notification+', '+
                           '"supportArea": "'+supportArea+'", '+
                           '"donor" : {"id": '+sessionStorage.getItem("donorId")+'},' +
                           '"beneficiary" : {"id": '+sessionStorage.getItem("benId")+'}' +
                           '}';

                       me.ajaxRequest.call({
                           httpMethod: "POST",
                           httpUrl: './rest/pledge/save',
                           requestParams: params,
                           responseTarget: '',
                           updateTarget: function (resp) {
                               //reload some aspect of a page;
                           }
                       })




                       });
               }

            }

        })


    },


    register: function () {
        var me = this;
        //redirects users to the register page;
        if (me.getEl("username").innerHTML == "Register") {
            window.location = "register.jsp";
        }

    },
    signout: function () {
        //clear the current sesssions
        sessionStorage.clear();
    },


    isNull: [],
    validateNull: function () {

        var me = this;
        var valid = [];
        me.model.forEach(function (el) {
            if (el.required == 'required') {
                if (el.type == 'textarea') {
                    if (me.modelId == "beneficiary") {
                        if (CKEDITOR.instances.notes.getData()) {
                            me.getEl(el.id).value = CKEDITOR.instances.notes.getData();
                            valid.push(false);
                        }
                        else {
                            valid.push(true);
                            Messages.nullError(el.name);
                        }

                    }
                    else if (me.modelId == "Charity Organization") {
                        if (CKEDITOR.instances.descr.getData()) {
                            me.getEl(el.id).value = CKEDITOR.instances.descr.getData();
                            valid.push(false);
                        }
                        else {
                            valid.push(true);
                            Messages.nullError(el.name);
                        }

                    }
                }
                else {
                    var inputField = me.getEl(el.id).value;
                    if (inputField) {
                        me.getEl(el.id).setAttribute("style", "border:2px solid #71ED40; box-shadow: 0px 0px 4px #71ED40");
                        valid.push(false);
                    }
                    else {
                        me.getEl(el.id).setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                        valid.push(true);
                        Messages.nullError(el.name);
                    }

                }
            }

            else {
                valid.push(false);
            }


        });
        isNull = valid;

    },
    isNumber: [],
    validateNumber: function () {
        var me = this;
        var valid = [];
        me.model.forEach(function (el) {
            if (el.type == 'number') {
                var regular = /^\d+$/;
                var inputField = me.getEl(el.id).value;
                var validNumber = regular.test(inputField);
                if (validNumber == true) {
                    me.getEl(el.id).setAttribute("style", "border:2px solid #71ED40; box-shadow: 0px 0px 4px #71ED40");
                    valid.push(true);

                }
                else {
                    me.getEl(el.id).setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                    Messages.numberError(el.name);
                    valid.push(false);
                }
            }
            else if (el.type != 'number') {
                valid.push(true);
            }

        });
        isNumber = valid;
    },
    isPassword: [],

    validateRepeatedPassword: function () {
        var me = this;
        valid = [];
        me.model.forEach(function (el) {
            if (el.type == 'password') {

                var passValue = me.getEl('password').value;


                if (rpassValue) {
                    var rpassValue = me.getEl('repeatPassword').value;
                    if (rpassValue != passValue) {
                        alertify.error("Your passwords do not match")
                        me.getEl('repeatPassword').setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                        valid.push(false);
                    }
                    else {
                        valid.push(true);
                    }
                }
                else {
                    valid.push(true);

                }


            }
            else {
                valid.push(true);
            }

        });
        isPassword = valid;
    },
    isEmail: [],
    validateEmail: function () {
        var me = this;
        var valid = []
        me.model.forEach(function (el) {
            if (el.type == "email") {
                var emailValue = me.getEl(el.id).value;
                var email = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                var booleanResult = email.test(emailValue);
                if (booleanResult == true) {
                    me.getEl(el.id).setAttribute("style", "border:2px solid #71ED40; box-shadow: 0px 0px 4px #71ED40");
                    valid.push(true);

                }
                else {
                    me.getEl(el.id).setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                    valid.push(false);
                    Messages.nullError(el.name)
                }

            }
            else {
                valid.push(true);

            }
        });
        isEmail = valid;
    },
    isValid: false,
    validateLengthArray: [],
    validateLength: function () {
        var me = this;
        var lengthArray = [];

        me.model.forEach(function (el) {


            if (el.minLength) {
                var value = me.getEl(el.id).value;

                if (value.length < el.minLength) {

                    me.getEl(el.id).setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                    alertify.error(el.name + "  should be at least " + el.minLength + " characters long");
                    isValid = false;
                    lengthArray.push(isValid);

                    return isValid;


                }


                else if (value.length + 1 > el.minLength && value.length - 1 < el.maxLength) {

                    me.getEl(el.id).setAttribute("style", "border:2px solid #71ED40; box-shadow: 0px 0px 4px #71ED40");
                    isValid = true;
                    lengthArray.push(isValid);
                    return isValid;


                }
                else if (value.length > el.maxLength) {

                    me.getEl(el.id).setAttribute("style", "border:2px solid #ff3333; box-shadow: 0px 0px 4px #ff3333");
                    alertify.error(el.name + "  should be at least " + el.minLength + " characters long");
                    isValid = false;
                    lengthArray.push(isValid);

                    return isValid;


                }

            }
            else {
                isValid = true;
                lengthArray.push(isValid)
            }

        });
        validateLengthArray = lengthArray;
    },
//dynamically show the form and table based on the users click
    list: function () {
        this.tableView();
    },
    charityOptions: [],

    charityOganizationList: function () {
        var me = this;
        var values = [];
        var name = []
        me.ajaxRequest.call({

            httpMethod: 'GET',
            httpUrl: "./rest/charityorg/list",
            responseTarget: '',
            updateTarget: function (resp) {

                var jsonObject = Object(JSON.parse(resp));
                jsonObject.list.forEach(function (el) {

                    name.push(el.name + "--" + el.id);
                })

            }
        });
        charityOptions = name;


    }


};

var Messages = {
    nullError: function (label) {
        alertify.error('Error\n, ' + label + ' can not be empty. !!');
    },
    emailError: function (label) {
        alertify.error('Error\n, ' + label + ' is not a valid email type. !!');
    },
    numberError: function (label) {
        alertify.error('Error\n, ' + label + ' Enter numbers only. !!');
    },
    formError: function () {
        alertify.error("Could not submit your form !!");
    },
    formSuccess: function () {
        alertify.error("Your form has been submitted!!");
    }
};
(function () {
    if(document.getElementById("username") && sessionStorage.getItem("email") == null){
        document.getElementById("username").addEventListener("click", function (){
            document.getElementById("username-dropdown").style.visibility="hidden";
        });

        document.getElementById("username").addEventListener("mouseover", function (){
            document.getElementById("username-dropdown").style.visibility="hidden";
        });



    }
})();