var indexOf=[].indexOf||function(t){for(var i=0,e=this.length;i<e;i++){if(i in this&&this[i]===t)return i}return-1};$(document).ready(function(){var t,i,e,n,r;r={food:0,fashion:1,art:2,life:3,home:4};i={photo:0,video:1,writing:2,gifs:3};n=null;e=null;t=function(){$(".story").addClass("hidden");return $(".story").filter(function(){var t,i;i=n==null||indexOf.call($(this).attr("data-topics"),n)>=0;t=e==null||indexOf.call($(this).attr("data-mediums"),e)>=0;return i&&t}).removeClass("hidden")};$(".topic").click(function(i){n=r[$(i.target).attr("id")].toString();t();$(".topic").removeClass("active");return $(this).addClass("active")});$(".medium").click(function(n){e=i[$(n.target).attr("id")].toString();t();$(".medium").removeClass("active");return $(this).addClass("active")});$(".top").click(function(i){n=null;t();return $(".topic").removeClass("active")});return $(".med").click(function(i){e=null;t();return $(".medium").removeClass("active")})});