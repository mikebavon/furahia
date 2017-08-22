/**
 * Created by ndikraxx on 8/18/16.
 */
var register = App.extend(App.Cmp, {
    modelId: 'register',
    httpUrl: './rest/user',
    formClass: 'col-xs-12 text-center',
    responseTarget: 'register-form',
    modelObjectArray: [],
    redirectTo: "login.jsp",
    model: [
        /*{
            id: 'salutations',
            name: 'salutations',
            type: 'select',
            label: 'fa fa-user',
            options: [
                {name: "-- SELECT SALUTATION--", value: ""},
                {name: "MR.", value: "MR"},
                {name: "MRS.", value: "MRS"},
                {name: "MS.", value: "MS"},
                {name: "DR.", value: "DR"},
                {name: "PROF.", value: "PROF"},
                {name: "FATHER.", value: "FATHER"},
                {name: "REV.", value: "REV"}]
        }, {
            id: 'firstName',
            name: 'firstName',
            placeholder: "First Name ... ",
            type: 'text',
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'lastName',
            name: 'middleName',
            placeholder: "Middle Name here ",
            type: 'text',
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'surname',
            name: 'surname',
            placeholder: "Surname here ..... ",
            type: 'text',
            label: 'fa fa-user',
            required: 'required'

        }, {
            id: 'gender',
            name: 'gender',
            type: 'select',
            label: "fa fa-female",
            options: [{name: "--SELECT GENDER--", value: ""},
                {name: "Male", value: "Male"}, {name: "Female", value: "Female"}]
        }, {
            id: 'gender',
            name: 'gender',
            type: 'select',
            label: "fa fa-female",
            options: [
                {name: "--SELECT ID TYPE--", value: ""},
                {name: "National ID", value: "NATIONAL_ID"},
                {name: "Passport", value: "PASSPORT_NO"}]
        }, {
            id: 'phoneNumber',
            name: 'phoneNumber',
            placeholder: "Identification Number ",
            type: 'number',
            label: 'fa fa-phone',
            required: 'required'

        }, {
            id: 'country',
            name: 'country',
            type: 'select',
            label: "fa fa-flag",
            options: [
                {name: "--SELECT COUNTRY--", value: ""},
                {name: "Kenya", value: "Kenya"},
                {name: "Tanzania", value: "Tanzania"},
                {name: "Uganda", value: "Uganda"},
                {name: "Rwanda", value: "Rwanda"}]
        }, {
            id: 'phoneNumber',
            name: 'phoneNumber',
            placeholder: "Phone Number {07XXXXXXXXXX} ",
            minLength: 10,
            maxLength: 10,
            type: 'number',
            label: 'fa fa-phone',
            required: 'required'

        }, */{
            id: 'username',
            name: 'username',
            placeholder: "Enter your email ",
            type: 'email',
            label: 'fa fa-envelope',
            required: 'required'

        }, {
            id: 'password',
            name: 'password',
            placeholder: "Password {Between 6 and 20 characters} ",
            type: 'password',
            minLength: 6,
            maxLength: 20,
            label: 'fa fa-lock',
            required: 'required'
        }, {
            id: 'repeatPassword',
            name: 'repeatPassword',
            transient: true,
            placeholder: "Repeat Password ",
            type: 'password',
            label: 'fa fa-lock',
            required: 'required'
        }]

});
(function () {
    register.form();
})();