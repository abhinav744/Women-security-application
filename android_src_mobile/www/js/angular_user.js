var app = angular.module("myapp", ['ngCookies']);
app.controller("myappCtrl", function($scope, $cookieStore, $cookies, $http) 
{
	
/****************************************************************************/
/************************** User Login *************************************/
/****************************************************************************/

	// sign in button
	$scope.user_login = function() 
	{		
		//$scope.field_1 = document.getElementById('Latitude_in').value;
		//$scope.field_2 = document.getElementById('Longitude_in').value;

        $http.post('https://myapphosting.in/android/women_7/user_login.php', 
			{
			'field_1':$scope.field_1,'field_2':$scope.field_2,
			'email': $scope.email, 'password':$scope.password
			})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Login Successful");
				$cookieStore.put("cook_user_email",data.email);
				
				$cookieStore.put("cook_user_mob",data.mobile);
				$cookieStore.put("cook_user_name",data.name);
				$cookieStore.put("cook_user_type",data.field_2);
				window.location = "user_home.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
	
/************************** Cookies **********************************/	
	$scope.cook_user_email = $cookieStore.get("cook_user_email");
	$scope.cook_user_mob = $cookieStore.get("cook_user_mob");
	$scope.cook_user_name = $cookieStore.get("cook_user_name");
	$scope.cook_user_type = $cookieStore.get("cook_user_type");
	

/****************************************************************************/
/************************** Police Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.police_login = function() 
	{		
        $http.post('https://myapphosting.in/android/women_7/police_login.php', 
			{'email': $scope.email, 'password':$scope.password})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 5) // Head Login 
			{
				alert("Login Successful");
				$cookieStore.put("cook_user_mail",data.email);
				$cookieStore.put("cook_user_email",data.field_1);
				$cookieStore.put("cook_user_type",data.field_2);
				$cookieStore.put("cook_user_dept",data.field_3);
				window.location = "police_home.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 4)
			{
				alert("Please Install New Version!");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
	
/************************** Cookies **********************************/	
	$scope.cook_user_mail = $cookieStore.get("cook_user_mail");
	$scope.cook_admin_email = $cookieStore.get("cook_admin_email");
	$scope.cook_user_type = $cookieStore.get("cook_user_type");
	$scope.cook_user_dept = $cookieStore.get("cook_user_dept");
	

/****************************************************************************/
/************************** User Logout ************************************/
/***************************************************************************	
	*/	
	$scope.admin_logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cook_user_email = "";
			$cookies.cook_admin_email = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}

$scope.user_logout = function() 
	{		
		$http.post('https://myapphosting.in/android/women_7/user_logout.php',{'email':$scope.cook_user_email})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Logout successfully");
				$cookies.cook_user_email = "";
				$cookies.cook_admin_email = "";
				window.location = "index.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 0)
			{
				alert("Error");
			}			
			else
			{
				alert(" Un Successfull");
			}   
          });
     }
//************************** admin_register **********************************/	

	$scope.user_register = function() 
	{		
		$http.post('https://myapphosting.in/android/women_7/user_register.php',{
		 'name':$scope.name,'email':$scope.email,'password':$scope.password, 
		 'mobile': $scope.mobile,'field_1': $scope.field_1,'field_2': $scope.field_2, 
		 'field_3': $scope.field_3,'field_4': $scope.field_4 })
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Registered successfully");
				window.location = "login.html";
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 3)
			{
				alert("Enter 10 Digit Mobile No");
			}
			else if(data.success == 4)
			{
				alert("Email ID Already Exists");
			}
			else if(data.success == 5)
			{
				alert("Enter 8 Digit Password");
			}
			else if(data.success == 6)
			{
				alert("Atleast Use One Special, Number and Captial Character - $1A ");
			}
			else if(data.success == 0)
			{
				alert("Error");
			}			
			else
			{
				alert(" Un Successfull");
			}   
          });
     }
/****************************************************************************/
/************************** Admin Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.admin_login = function() 
	{		
        $http.post('https://myapphosting.in/android/women_7/admin_login.php', 
			{'email': $scope.email, 'password':$scope.password})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Login Successful");
				$cookieStore.put("cook_admin_email",data.email);
				window.location = "admin_home.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else
			{
				alert("Login Unsuccessful");
			}
        });
    }
	
/************************** Cookies Login **********************************/	
	$scope.cook_admin_email = $cookieStore.get("cook_admin_email");
	

//************************** admin_register **********************************/	

	$scope.admin_register = function() 
	{		
		$http.post('https://myapphosting.in/android/women_7/admin_register.php',{
		 'name':$scope.name,'email':$scope.email,
		 'password':$scope.password,'mobile': $scope.mobile})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Registered successfully");
				window.location = "admin_login.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }
	 
/************************** Update Admin Info **********************************/

		$http.post('https://myapphosting.in/android/women_7/get_admin_info.php')
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.details = data.details;
			}
          });
		
/************************** Update User Info **********************************/
		
		$http.post('https://myapphosting.in/android/women_7/get_user_info.php',
		{
			'email':$scope.cook_user_email
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{			
				$scope.userdetails = data.details;
			}
          });
		  
/****************************************************************************/
/************************** User Login *************************************/
/****************************************************************************/
		  
	 $scope.myinfovar = true;

/****************************************************************************/
/************************** Admin Update Login *************************************/
/****************************************************************************/
	 
	 $scope.update_info = function(email,password,name,mobile) 
	{
		$scope.myinfovar = false;
		$scope.email = email;
		$scope.password = password;
		$scope.name = name;
		$scope.mobile = mobile;
		//window.location = "home.html";
	}	
	 
	$scope.save_info = function() 
	{		
		$http.post('https://myapphosting.in/android/women_7/admin_update.php',{
		 'name':$scope.name,'email':$scope.email,
		 'password':$scope.password,'mobile': $scope.mobile})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Submited successfully");
				window.location = "admin_post_info.html";
				return;				
			}
			else
			{
				alert("Invalid Inputs");
			}   
          });
     }

/****************************************************************************/
/************************** User Login *************************************/
/****************************************************************************/
	// sign in button
	$scope.newpassword = function() 
	{		
        $http.post('https://myapphosting.in/android/women_7/newpassword.php', 
			{	'email': $scope.email, 'password':$scope.password,
				'field_3': $scope.field_3, 'field_4':$scope.field_4
				})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Password Reset Successful");
				window.location = "index.html";  // Home Page
				return;				
			}
			else if(data.success == 2)
			{
				alert("Please Fill All Fields");
			}
			else if(data.success == 0)
			{
				alert("Reset Unsuccessful");
			}
			else
			{
				alert("Reset Unsuccessful");
			}
        });
    }
	

	 
	
});