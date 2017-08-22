/**
 * Created by ndikraxx on 9/13/16.
 */
(function () {

    if (sessionStorage.getItem("id") != null) {

            document.getElementById("username").innerHTML ="Welcome,  " + sessionStorage.getItem("email");

        document.getElementById("login").innerHTML = "Logout";
    }
    else {
        document.getElementById("username").innerHTML = "Register";

        document.getElementById("login").innerHTML = "Login";
    }

})();