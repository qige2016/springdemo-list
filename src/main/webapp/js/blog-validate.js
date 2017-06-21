	//表单验证规则
	$(".m-t").validate({
		rules: {
			"username":{
				"required":true,		//必填字段
				"rangelength":[2,10]
			},
			"password1":{
				"required":true,
				"rangelength":[6,12]
			},
			"password2":{
				"required":true,
				"equalTo":"#password1"		//输入值必须和 #password1 相同
			},
			"email":{
				"required":true,
				"email":true
			},
			"agree":{
				"required":true
			}
		},
		messages: {
			"username":{
				"required":"用户名不能为空哦",
				"rangelength":"请输入2-10位用户名"
			},
			"password1":{
				"required":"密码不能为空哦",
				"rangelength":"请输入6-12位密码"
			},
			"password2":{
				"required":"确认密码不能为空哦",
				"equalTo":"两次输入的密码不一致哦"
			},
			"email":{
				"required":"邮箱不能为空哦",
				"email":"请输入合法邮箱"
			},
			"agree":{
				"required":""
			}
		}
	});
	
	
