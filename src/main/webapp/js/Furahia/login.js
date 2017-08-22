/**
 * Created by ndikraxx on 8/18/16.
 */
var login = App.extend(App.Cmp, {
    modelId: 'login',
    httpUrl: './rest/login',
    formClass: 'mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 text-center',
    responseTarget: 'login-form',
    modelObjectArray: [],
    refresh: "login.jsp",
    redirectTo: "home.jsp",
    model: [{
        id: 'username',
        name: 'username',
        placeholder: "Phone Number or Email ",
        type: 'text',
        label: 'fa fa-lock ',
        required: 'required'
    },{
        id: 'password',
        name: 'password',
        placeholder: "Enter the password ",
        type: 'password',
        label: 'fa fa-lock ',
        required: 'required'
    }]
});
(function(){
    login.form();

})();
