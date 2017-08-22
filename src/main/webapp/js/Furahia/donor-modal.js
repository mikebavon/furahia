/**
 * Created by ndikraxx on 11/13/16.
 */

var donorModal = App.extend(App.Cmp, {
    modelId: 'donorModal',
    httpUrl: './rest/donor',
    formClass: 'col-sm-9 text-center col-sm-offset-1',
    responseTarget: 'donor-modal-content',
    modelObjectArray: ["person", "address"],
    model: [
        {
            id: 'salutation',
            name: 'salutation',
            type: 'select',
            modelObject: "person",
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
            table: 'First Name',
            modelObject: "person",
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'lastName',
            name: 'lastName',
            table: 'Last Name',
            placeholder: "Last Name here ",
            type: 'text',
            modelObject: "person",
            label: 'fa fa-user',
            required: 'required'
        }, {
            id: 'surname',
            name: 'surname',
            modelObject: "person",
            table: ' Surname',
            placeholder: "Surname here ..... ",
            type: 'text',
            label: 'fa fa-user',
            required: 'required'

        }, {
            id: 'gender',
            name: 'gender',
            type: 'select',
            modelObject: "person",
            label: "fa fa-female",
            options: [{name: "--SELECT GENDER--", value: ""},
                {name: "Male", value: "MALE"}, {name: "Female", value: "FEMALE"}]
        }, {
            id: 'idType',
            name: 'idType',
            type: 'select',
            modelObject: "person",
            label: "fa fa-female",
            options: [
                {name: "--SELECT ID TYPE--", value: ""},
                {name: "National ID", value: "NATIONAL_ID"},
                {name: "Passport", value: "PASSPORT_NO"}]
        }, {
            id: 'idNo',
            name: 'idNo',
            modelObject: "person",
            table: 'Id No',
            placeholder: "Identification Number ",
            type: 'number',
            label: 'fa fa-phone',
            required: 'required'

        }, {
            id: 'nationality',
            name: 'nationality',
            type: 'select',
            modelObject: "person",
            label: "fa fa-flag",
            options: [
                {name: "--SELECT COUNTRY--", value: ""},
                {name: "Kenya", value: "Kenya"},
                {name: "Tanzania", value: "Tanzania"},
                {name: "Uganda", value: "Uganda"},
                {name: "Rwanda", value: "Rwanda"}]
        }, {
            id: 'cellPhone',
            name: 'cellPhone',
            modelObject: "address",
            placeholder: "Phone Number {07XXXXXXXXXX} ",
            minLength: 10,
            maxLength: 10,
            type: 'number',
            label: 'fa fa-phone',
            required: 'required'

        }, {
            id: 'email',
            name: 'email',
            modelObject: "address",
            type: 'text',
            placeholder: "Email ",
            readOnly: "readonly",
            label: 'fa fa-phone',
        },
        {
            id: 'id',
            name: 'id',
            type: 'hidden',
            modelObject: "userAuth"

        }]
});
(function (){
    if (document.getElementById("donor-modal"))
    {
        document.getElementById("donor-modal").innerHTML=donorModal.form();
    }
})();
