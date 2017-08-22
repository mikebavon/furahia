/**
 * Created by ndikraxx on 8/15/16.
 */

var beneficiary = App.extend(App.Cmp, {
    modelName: 'beneficiary',
    modelId: 'beneficiary',
    httpUrl: './rest/beneficiary',
    responseTarget: 'ajax-content',
    formClass: 'col-sm-9 text-center col-sm-offset-1',
    modelObjectArray: ["person", "charityOrg"],
    model: [
        {
            id: 'firstName',
            name: 'firstName',
            placeholder: "Enter the beneficiary's first name ",
            type: 'text',
            modelObject: "person",
            table: 'First Name',
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'lastName',
            name: 'lastName',
            placeholder: "Enter the beneficiary's middle name ",
            type: 'text',
            table: 'Last Name',
            modelObject: "person",
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'surname',
            name: 'surname',
            placeholder: "Enter the beneficiary's surname ",
            type: 'text',
            table: 'Surname',
            modelObject: "person",
            label: 'fa fa-user',
            required: 'required'

        }, {
            id: 'gender',
            name: 'gender',
            type: 'select',
            modelObject: "person",
            label: "fa fa-female",
            options: [{name: "MALE", value: "MALE"}, {name: "FEMALE", value: "FEMALE"}]
        }, {
            id: 'nationality',
            name: 'nationality',
            type: 'select',
            modelObject: "person",
            label: "fa fa-flag",
            options: [
                {name: "Kenya", value: "Kenya"},
                {name: "Tanzania", value: "Tanzania"},
                {name: "Uganda", value: "Uganda"},
                {name: "Rwanda", value: "Rwanda"}
            ]
        }, {
            id: 'id',
            name: 'id',
            modelObject: 'charityOrg',
            type: 'select',
            column_name: 'name',
            table: 'Charity Org..',
            label: "fa fa-university",
            options: []
        }, {
            id: "imageName",
            name: 'imageName',
            placeholder: "Beneficiary's image ",
            type: 'file',
            modelObject: "person",
            label: 'fa fa-file-image-o: '
        }, {
            label: "fa fa-calendar",
            id: 'dob',
            name: 'dob',
            type: 'date',
            modelObject: "person",
            required: 'required',
            placeholder: "Enter the beneficiary's date of birth"
        },
        {
            label: 'fa fa-keyboard-o',
            id: 'notes',
            name: 'notes',
            type: 'textarea',
            modelObject: "person",
            rows: '12',
            required: 'required',
            placeholder: "Enter the beneficiary's description"
        }, {

            id: 'id',
            name: 'id',
            type: 'hidden',
        }

    ]
});
(function () {
    App.Cmp.charityOganizationList();
    beneficiary.model.forEach(function (el) {
        if (el.id == "id") {
            charityOptions.forEach(function (list) {
                nameOnly = [];
                nameOnly = list.split("--");

                var options = new Object();
                options.name = nameOnly[0];
                options.value = parseInt(nameOnly[1])
                if (el.options)
                el.options.push(options);
            });

        }
    });

})();
