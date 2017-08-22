/**
 * Created by ndikraxx on 8/17/16.
 */
var charityOrg =  App.extend(App.Cmp, {
    modelId: 'Charity Organization',
    httpUrl: './rest/charityorg',
    responseTarget: 'ajax-content',
    formClass: 'col-sm-9 text-center col-sm-offset-1',
    modelObjectArray: ["address"],
    model: [{
        id: 'name',
        name: 'name',
        placeholder: "Charity Organization's  name ",
        type: 'text',
        label: 'fa fa-university ',
        table: 'Name',
        required: 'required'
    },{
        id: 'building',
        name: 'building',
        placeholder: "Building's Location ",
        type: 'text',
        table: 'Building',
        modelObject: "address",
        label: 'fa fa-building ',
        required: 'required'
    }, {
        id: 'estate',
        name: 'estate',
        placeholder: "Estate Location ",
        type: 'text',
        modelObject: "address",
        label: 'fa fa-simplybuilt',
        required: 'required'
    },{
        id: 'road',
        name: 'road',
        placeholder: "Road",
        type: 'text',
        modelObject: "address",
        label: 'fa fa-road ',
        required: 'required'
    },{
        id: 'town',
        name: 'town',
        placeholder: "Town ",
        type: 'text',
        modelObject: "address",
        label: 'fa fa-university',
        required: 'required'
    },{
        id: 'country',
        name: 'country',
        type: 'select',
        modelObject: "address",
        label: "fa fa-flag",
        options :[
            {name: "Kenya", value: "Kenya"},
            {name: "Tanzania", value: "Tanzania"},
            {name: "Uganda", value: "Uganda"},
            {name: "Rwanda", value: "Rwanda"}
        ]
    },{
        id: 'cellPhone',
        name: 'cellPhone',
        maxLength:10,
        minLength: 10,
        table: 'Phone',
        modelObject: "address",
        placeholder: "Enter the cell phone",
        type: 'number',
        label: 'fa fa-mobile ',
        required: 'required'
    },{
        id: 'fixedPhone',
        name: 'fixedPhone',
        maxLength:10,
        minLength: 10,
        modelObject: "address",
        placeholder: "Enter the fixed phone ",
        type: 'number',
        label: 'fa fa-phone ',
        required: 'required'
    },{
        id: 'email',
        name: 'email',
        placeholder: "Enter the email ",
        table: 'Email',
        type: 'email',
        modelObject: "address",
        label: 'fa fa-envelope ',
        required: 'required'
    },{
        id: 'postalAddress',
        name: 'postalAddress',
        modelObject: "address",
        placeholder: "Postal Address",
        type: 'number',
        label: 'fa fa-inbox ',
        required: 'required'
    },{
        id: 'postalCode',
        name: 'postalCode',
        placeholder: "Postal Code ",
        type: 'number',
        modelObject: "address",
        label: 'fa fa-inbox ',
        required: 'required'
    },{
        id: 'website',
        name: 'website',
        placeholder: "Website ",
        type: 'text',
        modelObject: "address",
        label: 'fa fa-firefox',
        required: 'required'
    },
        {
            label: 'fa fa-keyboard-o',
            id: 'descr',
            name: 'descr',
            type: 'textarea',
            rows: '12',
            required: 'required',
            placeholder: "Enter the beneficiary's description"
        }
    ]
});



