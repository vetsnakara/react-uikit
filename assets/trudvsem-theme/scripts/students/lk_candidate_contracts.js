!function(){var d,t="COOPERATION",e="STUDENT",n="INSTITUTION",o="EMPLOYER",l="NOTIFICATIONS",s="Работодатель",r=["Кандидат",s,"Учебное заведение"],p=function(e){for(var t=Object.keys(e).map(function(t){return e[t]}),n=0;n<t.length;n++)if(-1!==r.indexOf(t[n]))return t[n];return"USER_ROLE_UNKNOWN"}(currentUserFull.roles);currentUserFull.id;function a(t){var e=$(this),t=$(t.relatedTarget);d=t.data("cooperation-id"),e.find("[data-content=cooperation-type]").text(t.data("cooperation-type")),e.find("[data-content=cooperation-partner]").text(t.data("cooperation-partner")),e.find("[data-action=contract-delete]").off("click",i).on("click",i)}function i(){var a,i,u,c;getCatalogItem(t,d).then(function(t){return a=t[1],i=t[4],u=t[5],c=t[6],deferrers=[i?getCatalogItem(e,i):null,getCatalogItem(n,u),getCatalogItem(o,c)],$.when.apply($,deferrers)}).then(function(t,e,n){var o,r,t=t?t[1]:null,e=e[2],n=n[1],e="Договор "+a+" c "+(p===s?e:n)+(t?" и студентом ".concat(t):"")+" удален",n=(console.log(e),{cooperation:d,user:currentUserFull.id,student:i,institution:u,employer:c});return console.log("ids",n),$.when(function(t){return getCatalogData(l,{id_cooperation:t,reading_marker:!1}).then(function(t){return t.result.data})}(d).then(function(t){var e=t.map(function(t){return t[0]});return console.log("notifications:",t),e}).then(function(t){return 0<t.length?(t=t.map(function(t){(function(t,e,n){e={url:"//test-portal.trudvsem.ru/information/catalogprovider/api/1.2/catalog/updateFields?code="+e.toUpperCase()+"&id="+t+"&unique_request_identifier="+_.uniqueId("PC_")+"&version=1.2",dataType:"json",contentType:"application/json",method:"POST",data:JSON.stringify(n)};return $.ajax(e)})(t,l,{reading_marker:!0}).catch(m)}),$.when.apply($,t)):$.Deferred(function(){this.resolve()})}).catch(m),(t={url:"//test-portal.trudvsem.ru/information/catalogprovider/api/1.2/catalog/updateFields?code=COOPERATION&id="+(t=d)+"&unique_request_identifier="+_.uniqueId("COOPERATION_")+"&version=1.2",dataType:"json",contentType:"application/json",method:"POST",data:JSON.stringify({deleted:!0})},void $.ajax(t)),(t=e,e=[(o=n).student,o.employer,o.institution].filter(function(t){return t&&t!==o.user}),r={id_cooperation:o.cooperation,date:Date.now(),reading_marker:!1,text:t||"",id_student:o.student,id_institution:o.institution,id_employer:o.employer},t=e.map(function(t){return sendNotification(t,r)}),$.when.apply($,t)))}).then(f).catch(m)}function f(){document.location.reload(!0)}function m(t){console.error(t)}$("body").off("show.bs.modal","#delete-modal",a).on("show.bs.modal","#delete-modal",a)}();