!function(){var n="object"==typeof self&&self.self===self&&self||"object"==typeof global&&global.global===global&&global||this||{},q=n._,e=Array.prototype,o=Object.prototype,f="undefined"!=typeof Symbol?Symbol.prototype:null,K=e.push,c=e.slice,s=o.toString,i=o.hasOwnProperty,t=Array.isArray,u=Object.keys,r=Object.create,a=function(){},h=function(n){return n instanceof h?n:this instanceof h?void(this._wrapped=n):new h(n)};"undefined"==typeof exports||exports.nodeType?n._=h:(exports="undefined"!=typeof module&&!module.nodeType&&module.exports?module.exports=h:exports)._=h,h.VERSION="1.9.1";function l(u,i){return i=null==i?u.length-1:+i,function(){for(var n=Math.max(arguments.length-i,0),t=Array(n),r=0;r<n;r++)t[r]=arguments[r+i];switch(i){case 0:return u.call(this,t);case 1:return u.call(this,arguments[0],t);case 2:return u.call(this,arguments[0],arguments[1],t)}for(var e=Array(i+1),r=0;r<i;r++)e[r]=arguments[r];return e[i]=t,u.apply(this,e)}}function p(t){return function(n){return null==n?void 0:n[t]}}function y(n,t){for(var r=t.length,e=0;e<r;e++){if(null==n)return;n=n[t[e]]}return r?n:void 0}function v(p){return function(n,t,r,e){var u=3<=arguments.length,i=n,o=A(t,e,4),a=r,c=!M(i)&&h.keys(i),l=(c||i).length,f=0<p?0:l-1;for(u||(a=i[c?c[f]:f],f+=p);0<=f&&f<l;f+=p){var s=c?c[f]:f;a=o(a,i[s],s,i)}return a}}function d(i,t){return function(r,e,n){var u=t?[[],[]]:{};return e=w(e,n),h.each(r,function(n,t){t=e(n,t,r);i(u,n,t)}),u}}function g(i){return function(n,t,r){t=w(t,r);for(var e=S(n),u=0<i?0:e-1;0<=u&&u<e;u+=i)if(t(n[u],u,n))return u;return-1}}function m(i,o,a){return function(n,t,r){var e=0,u=S(n);if("number"==typeof r)0<i?e=0<=r?r:Math.max(r+u,e):u=0<=r?Math.min(r+1,u):r+u+1;else if(a&&r&&u)return n[r=a(n,t)]===t?r:-1;if(t!=t)return 0<=(r=o(c.call(n,e,u),h.isNaN))?r+e:-1;for(r=0<i?e:u-1;0<=r&&r<u;r+=i)if(n[r]===t)return r;return-1}}function b(n,t,r,e,u){return e instanceof t?(e=O(n.prototype),t=n.apply(e,u),h.isObject(t)?t:e):n.apply(r,u)}function j(n,t){var r=N.length,e=n.constructor,u=h.isFunction(e)&&e.prototype||o,i="constructor";for(k(n,i)&&!h.contains(t,i)&&t.push(i);r--;)(i=N[r])in n&&n[i]!==u[i]&&!h.contains(t,i)&&t.push(i)}function x(c,l){return function(n){var t=arguments.length;if(l&&(n=Object(n)),!(t<2||null==n))for(var r=1;r<t;r++)for(var e=arguments[r],u=c(e),i=u.length,o=0;o<i;o++){var a=u[o];l&&void 0!==n[a]||(n[a]=e[a])}return n}}var _,A=function(u,i,n){if(void 0===i)return u;switch(null==n?3:n){case 1:return function(n){return u.call(i,n)};case 3:return function(n,t,r){return u.call(i,n,t,r)};case 4:return function(n,t,r,e){return u.call(i,n,t,r,e)}}return function(){return u.apply(i,arguments)}},w=function(n,t,r){return h.iteratee!==_?h.iteratee(n,t):null==n?h.identity:h.isFunction(n)?A(n,t,r):h.isObject(n)&&!h.isArray(n)?h.matcher(n):h.property(n)},O=(h.iteratee=_=function(n,t){return w(n,t,1/0)},function(n){if(!h.isObject(n))return{};if(r)return r(n);a.prototype=n;n=new a;return a.prototype=null,n}),k=function(n,t){return null!=n&&i.call(n,t)},z=Math.pow(2,53)-1,S=p("length"),M=function(n){n=S(n);return"number"==typeof n&&0<=n&&n<=z},D=(h.each=h.forEach=function(n,t,r){if(t=A(t,r),M(n))for(u=0,i=n.length;u<i;u++)t(n[u],u,n);else for(var e=h.keys(n),u=0,i=e.length;u<i;u++)t(n[e[u]],e[u],n);return n},h.map=h.collect=function(n,t,r){t=w(t,r);for(var e=!M(n)&&h.keys(n),u=(e||n).length,i=Array(u),o=0;o<u;o++){var a=e?e[o]:o;i[o]=t(n[a],a,n)}return i},h.reduce=h.foldl=h.inject=v(1),h.reduceRight=h.foldr=v(-1),h.find=h.detect=function(n,t,r){t=(M(n)?h.findIndex:h.findKey)(n,t,r);if(void 0!==t&&-1!==t)return n[t]},h.filter=h.select=function(n,e,t){var u=[];return e=w(e,t),h.each(n,function(n,t,r){e(n,t,r)&&u.push(n)}),u},h.reject=function(n,t,r){return h.filter(n,h.negate(w(t)),r)},h.every=h.all=function(n,t,r){t=w(t,r);for(var e=!M(n)&&h.keys(n),u=(e||n).length,i=0;i<u;i++){var o=e?e[i]:i;if(!t(n[o],o,n))return!1}return!0},h.some=h.any=function(n,t,r){t=w(t,r);for(var e=!M(n)&&h.keys(n),u=(e||n).length,i=0;i<u;i++){var o=e?e[i]:i;if(t(n[o],o,n))return!0}return!1},h.contains=h.includes=h.include=function(n,t,r,e){return M(n)||(n=h.values(n)),0<=h.indexOf(n,t,r="number"==typeof r&&!e?r:0)},h.invoke=l(function(n,r,e){var u,i;return h.isFunction(r)?i=r:h.isArray(r)&&(u=r.slice(0,-1),r=r[r.length-1]),h.map(n,function(n){var t=i;if(!t){if(null==(n=u&&u.length?y(n,u):n))return;t=n[r]}return null==t?t:t.apply(n,e)})}),h.pluck=function(n,t){return h.map(n,h.property(t))},h.where=function(n,t){return h.filter(n,h.matcher(t))},h.findWhere=function(n,t){return h.find(n,h.matcher(t))},h.max=function(n,e,t){var r,u,i=-1/0,o=-1/0;if(null==e||"number"==typeof e&&"object"!=typeof n[0]&&null!=n)for(var a=0,c=(n=M(n)?n:h.values(n)).length;a<c;a++)null!=(r=n[a])&&i<r&&(i=r);else e=w(e,t),h.each(n,function(n,t,r){u=e(n,t,r),(o<u||u===-1/0&&i===-1/0)&&(i=n,o=u)});return i},h.min=function(n,e,t){var r,u,i=1/0,o=1/0;if(null==e||"number"==typeof e&&"object"!=typeof n[0]&&null!=n)for(var a=0,c=(n=M(n)?n:h.values(n)).length;a<c;a++)null!=(r=n[a])&&r<i&&(i=r);else e=w(e,t),h.each(n,function(n,t,r){((u=e(n,t,r))<o||u===1/0&&i===1/0)&&(i=n,o=u)});return i},h.shuffle=function(n){return h.sample(n,1/0)},h.sample=function(n,t,r){if(null==t||r)return(n=M(n)?n:h.values(n))[h.random(n.length-1)];var e=M(n)?h.clone(n):h.values(n),r=S(e);t=Math.max(Math.min(t,r),0);for(var u=r-1,i=0;i<t;i++){var o=h.random(i,u),a=e[i];e[i]=e[o],e[o]=a}return e.slice(0,t)},h.sortBy=function(n,e,t){var u=0;return e=w(e,t),h.pluck(h.map(n,function(n,t,r){return{value:n,index:u++,criteria:e(n,t,r)}}).sort(function(n,t){var r=n.criteria,e=t.criteria;if(r!==e){if(e<r||void 0===r)return 1;if(r<e||void 0===e)return-1}return n.index-t.index}),"value")},h.groupBy=d(function(n,t,r){k(n,r)?n[r].push(t):n[r]=[t]}),h.indexBy=d(function(n,t,r){n[r]=t}),h.countBy=d(function(n,t,r){k(n,r)?n[r]++:n[r]=1}),/[^\ud800-\udfff]|[\ud800-\udbff][\udc00-\udfff]|[\ud800-\udfff]/g),F=(h.toArray=function(n){return n?h.isArray(n)?c.call(n):h.isString(n)?n.match(D):M(n)?h.map(n,h.identity):h.values(n):[]},h.size=function(n){return null==n?0:(M(n)?n:h.keys(n)).length},h.partition=d(function(n,t,r){n[r?0:1].push(t)},!0),h.first=h.head=h.take=function(n,t,r){return null==n||n.length<1?null==t?void 0:[]:null==t||r?n[0]:h.initial(n,n.length-t)},h.initial=function(n,t,r){return c.call(n,0,Math.max(0,n.length-(null==t||r?1:t)))},h.last=function(n,t,r){return null==n||n.length<1?null==t?void 0:[]:null==t||r?n[n.length-1]:h.rest(n,Math.max(0,n.length-t))},h.rest=h.tail=h.drop=function(n,t,r){return c.call(n,null==t||r?1:t)},h.compact=function(n){return h.filter(n,Boolean)},function(n,t,r,e){for(var u=(e=e||[]).length,i=0,o=S(n);i<o;i++){var a=n[i];if(M(a)&&(h.isArray(a)||h.isArguments(a)))if(t)for(var c=0,l=a.length;c<l;)e[u++]=a[c++];else F(a,t,r,e),u=e.length;else r||(e[u++]=a)}return e}),E=(h.flatten=function(n,t){return F(n,t,!1)},h.without=l(function(n,t){return h.difference(n,t)}),h.uniq=h.unique=function(n,t,r,e){h.isBoolean(t)||(e=r,r=t,t=!1),null!=r&&(r=w(r,e));for(var u=[],i=[],o=0,a=S(n);o<a;o++){var c=n[o],l=r?r(c,o,n):c;t&&!r?(o&&i===l||u.push(c),i=l):r?h.contains(i,l)||(i.push(l),u.push(c)):h.contains(u,c)||u.push(c)}return u},h.union=l(function(n){return h.uniq(F(n,!0,!0))}),h.intersection=function(n){for(var t=[],r=arguments.length,e=0,u=S(n);e<u;e++){var i=n[e];if(!h.contains(t,i)){for(var o=1;o<r&&h.contains(arguments[o],i);o++);o===r&&t.push(i)}}return t},h.difference=l(function(n,t){return t=F(t,!0,!0),h.filter(n,function(n){return!h.contains(t,n)})}),h.unzip=function(n){for(var t=n&&h.max(n,S).length||0,r=Array(t),e=0;e<t;e++)r[e]=h.pluck(n,e);return r},h.zip=l(h.unzip),h.object=function(n,t){for(var r={},e=0,u=S(n);e<u;e++)t?r[n[e]]=t[e]:r[n[e][0]]=n[e][1];return r},h.findIndex=g(1),h.findLastIndex=g(-1),h.sortedIndex=function(n,t,r,e){for(var u=(r=w(r,e,1))(t),i=0,o=S(n);i<o;){var a=Math.floor((i+o)/2);r(n[a])<u?i=a+1:o=a}return i},h.indexOf=m(1,h.findIndex,h.sortedIndex),h.lastIndexOf=m(-1,h.findLastIndex),h.range=function(n,t,r){null==t&&(t=n||0,n=0),r=r||(t<n?-1:1);for(var e=Math.max(Math.ceil((t-n)/r),0),u=Array(e),i=0;i<e;i++,n+=r)u[i]=n;return u},h.chunk=function(n,t){if(null==t||t<1)return[];for(var r=[],e=0,u=n.length;e<u;)r.push(c.call(n,e,e+=t));return r},h.bind=l(function(t,r,e){var u;if(h.isFunction(t))return u=l(function(n){return b(t,u,r,this,e.concat(n))});throw new TypeError("Bind must be called on a function")}),h.partial=l(function(u,i){function o(){for(var n=0,t=i.length,r=Array(t),e=0;e<t;e++)r[e]=i[e]===a?arguments[n++]:i[e];for(;n<arguments.length;)r.push(arguments[n++]);return b(u,o,this,this,r)}var a=h.partial.placeholder;return o}),(h.partial.placeholder=h).bindAll=l(function(n,t){var r=(t=F(t,!1,!1)).length;if(r<1)throw new Error("bindAll must be passed function names");for(;r--;){var e=t[r];n[e]=h.bind(n[e],n)}}),h.memoize=function(e,u){function i(n){var t=i.cache,r=""+(u?u.apply(this,arguments):n);return k(t,r)||(t[r]=e.apply(this,arguments)),t[r]}return i.cache={},i},h.delay=l(function(n,t,r){return setTimeout(function(){return n.apply(null,r)},t)}),h.defer=h.partial(h.delay,h,1),h.throttle=function(r,e,u){function i(){f=!1===u.leading?0:h.now(),o=null,l=r.apply(a,c),o||(a=c=null)}function n(){var n=h.now(),t=(f||!1!==u.leading||(f=n),e-(n-f));return a=this,c=arguments,t<=0||e<t?(o&&(clearTimeout(o),o=null),f=n,l=r.apply(a,c),o||(a=c=null)):o||!1===u.trailing||(o=setTimeout(i,t)),l}var o,a,c,l,f=0;u=u||{};return n.cancel=function(){clearTimeout(o),f=0,o=a=c=null},n},h.debounce=function(r,e,u){function i(n,t){o=null,t&&(a=r.apply(n,t))}var o,a,n=l(function(n){var t;return o&&clearTimeout(o),u?(t=!o,o=setTimeout(i,e),t&&(a=r.apply(this,n))):o=h.delay(i,e,this,n),a});return n.cancel=function(){clearTimeout(o),o=null},n},h.wrap=function(n,t){return h.partial(t,n)},h.negate=function(n){return function(){return!n.apply(this,arguments)}},h.compose=function(){var r=arguments,e=r.length-1;return function(){for(var n=e,t=r[e].apply(this,arguments);n--;)t=r[n].call(this,t);return t}},h.after=function(n,t){return function(){if(--n<1)return t.apply(this,arguments)}},h.before=function(n,t){var r;return function(){return 0<--n&&(r=t.apply(this,arguments)),n<=1&&(t=null),r}},h.once=h.partial(h.before,2),h.restArguments=l,!{toString:null}.propertyIsEnumerable("toString")),N=["valueOf","isPrototypeOf","toString","propertyIsEnumerable","hasOwnProperty","toLocaleString"];h.keys=function(n){if(!h.isObject(n))return[];if(u)return u(n);var t,r=[];for(t in n)k(n,t)&&r.push(t);return E&&j(n,r),r},h.allKeys=function(n){if(!h.isObject(n))return[];var t,r=[];for(t in n)r.push(t);return E&&j(n,r),r},h.values=function(n){for(var t=h.keys(n),r=t.length,e=Array(r),u=0;u<r;u++)e[u]=n[t[u]];return e},h.mapObject=function(n,t,r){t=w(t,r);for(var e=h.keys(n),u=e.length,i={},o=0;o<u;o++){var a=e[o];i[a]=t(n[a],a,n)}return i},h.pairs=function(n){for(var t=h.keys(n),r=t.length,e=Array(r),u=0;u<r;u++)e[u]=[t[u],n[t[u]]];return e},h.invert=function(n){for(var t={},r=h.keys(n),e=0,u=r.length;e<u;e++)t[n[r[e]]]=r[e];return t},h.functions=h.methods=function(n){var t,r=[];for(t in n)h.isFunction(n[t])&&r.push(t);return r.sort()};h.extend=x(h.allKeys),h.extendOwn=h.assign=x(h.keys),h.findKey=function(n,t,r){t=w(t,r);for(var e,u=h.keys(n),i=0,o=u.length;i<o;i++)if(t(n[e=u[i]],e,n))return e};function L(n,t,r){return t in r}function I(t){function r(n){return t[n]}var n="(?:"+h.keys(t).join("|")+")",e=RegExp(n),u=RegExp(n,"g");return function(n){return e.test(n=null==n?"":""+n)?n.replace(u,r):n}}function P(n){return"\\"+U[n]}function T(n,t){return n._chain?h(t).chain():t}h.pick=l(function(n,t){var r={},e=t[0];if(null!=n){h.isFunction(e)?(1<t.length&&(e=A(e,t[1])),t=h.allKeys(n)):(e=L,t=F(t,!1,!1),n=Object(n));for(var u=0,i=t.length;u<i;u++){var o=t[u],a=n[o];e(a,o,n)&&(r[o]=a)}}return r}),h.omit=l(function(n,r){var t,e=r[0];return h.isFunction(e)?(e=h.negate(e),1<r.length&&(t=r[1])):(r=h.map(F(r,!1,!1),String),e=function(n,t){return!h.contains(r,t)}),h.pick(n,e,t)}),h.defaults=x(h.allKeys,!0),h.create=function(n,t){n=O(n);return t&&h.extendOwn(n,t),n},h.clone=function(n){return h.isObject(n)?h.isArray(n)?n.slice():h.extend({},n):n},h.tap=function(n,t){return t(n),n},h.isMatch=function(n,t){var r=h.keys(t),e=r.length;if(null==n)return!e;for(var u=Object(n),i=0;i<e;i++){var o=r[i];if(t[o]!==u[o]||!(o in u))return!1}return!0},B=function(n,t,r,e){var u;return n===t?0!==n||1/n==1/t:null!=n&&null!=t&&(n!=n?t!=t:("function"==(u=typeof n)||"object"==u||"object"==typeof t)&&W(n,t,r,e))},W=function(n,t,r,e){n instanceof h&&(n=n._wrapped),t instanceof h&&(t=t._wrapped);var u=s.call(n);if(u!==s.call(t))return!1;switch(u){case"[object RegExp]":case"[object String]":return""+n==""+t;case"[object Number]":return+n!=+n?+t!=+t:0==+n?1/+n==1/t:+n==+t;case"[object Date]":case"[object Boolean]":return+n==+t;case"[object Symbol]":return f.valueOf.call(n)===f.valueOf.call(t)}u="[object Array]"===u;if(!u){if("object"!=typeof n||"object"!=typeof t)return!1;var i=n.constructor,o=t.constructor;if(i!==o&&!(h.isFunction(i)&&i instanceof i&&h.isFunction(o)&&o instanceof o)&&"constructor"in n&&"constructor"in t)return!1}e=e||[];for(var a=(r=r||[]).length;a--;)if(r[a]===n)return e[a]===t;if(r.push(n),e.push(t),u){if((a=n.length)!==t.length)return!1;for(;a--;)if(!B(n[a],t[a],r,e))return!1}else{var c,l=h.keys(n),a=l.length;if(h.keys(t).length!==a)return!1;for(;a--;)if(c=l[a],!k(t,c)||!B(n[c],t[c],r,e))return!1}return r.pop(),e.pop(),!0},h.isEqual=function(n,t){return B(n,t)},h.isEmpty=function(n){return null==n||(M(n)&&(h.isArray(n)||h.isString(n)||h.isArguments(n))?0===n.length:0===h.keys(n).length)},h.isElement=function(n){return!(!n||1!==n.nodeType)},h.isArray=t||function(n){return"[object Array]"===s.call(n)},h.isObject=function(n){var t=typeof n;return"function"==t||"object"==t&&!!n},h.each(["Arguments","Function","String","Number","Date","RegExp","Error","Symbol","Map","WeakMap","Set","WeakSet"],function(t){h["is"+t]=function(n){return s.call(n)==="[object "+t+"]"}}),h.isArguments(arguments)||(h.isArguments=function(n){return k(n,"callee")});var B,W,t=n.document&&n.document.childNodes,t=("function"!=typeof/./&&"object"!=typeof Int8Array&&"function"!=typeof t&&(h.isFunction=function(n){return"function"==typeof n||!1}),h.isFinite=function(n){return!h.isSymbol(n)&&isFinite(n)&&!isNaN(parseFloat(n))},h.isNaN=function(n){return h.isNumber(n)&&isNaN(n)},h.isBoolean=function(n){return!0===n||!1===n||"[object Boolean]"===s.call(n)},h.isNull=function(n){return null===n},h.isUndefined=function(n){return void 0===n},h.has=function(n,t){if(!h.isArray(t))return k(n,t);for(var r=t.length,e=0;e<r;e++){var u=t[e];if(null==n||!i.call(n,u))return!1;n=n[u]}return!!r},h.noConflict=function(){return n._=q,this},h.identity=function(n){return n},h.constant=function(n){return function(){return n}},h.noop=function(){},h.property=function(t){return h.isArray(t)?function(n){return y(n,t)}:p(t)},h.propertyOf=function(t){return null==t?function(){}:function(n){return h.isArray(n)?y(t,n):t[n]}},h.matcher=h.matches=function(t){return t=h.extendOwn({},t),function(n){return h.isMatch(n,t)}},h.times=function(n,t,r){var e=Array(Math.max(0,n));t=A(t,r,1);for(var u=0;u<n;u++)e[u]=t(u);return e},h.random=function(n,t){return null==t&&(t=n,n=0),n+Math.floor(Math.random()*(t-n+1))},h.now=Date.now||function(){return(new Date).getTime()},{"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"}),C=h.invert(t),J=(h.escape=I(t),h.unescape=I(C),h.result=function(n,t,r){var e=(t=h.isArray(t)?t:[t]).length;if(!e)return h.isFunction(r)?r.call(n):r;for(var u=0;u<e;u++){var i=null==n?void 0:n[t[u]];void 0===i&&(i=r,u=e),n=h.isFunction(i)?i.call(n):i}return n},0),R=(h.uniqueId=function(n){var t=++J+"";return n?n+t:t},h.templateSettings={evaluate:/<%([\s\S]+?)%>/g,interpolate:/<%=([\s\S]+?)%>/g,escape:/<%-([\s\S]+?)%>/g},/(.)^/),U={"'":"'","\\":"\\","\r":"r","\n":"n","\u2028":"u2028","\u2029":"u2029"},V=/\\|'|\r|\n|\u2028|\u2029/g;h.template=function(i,n,t){n=h.defaults({},n=!n&&t?t:n,h.templateSettings);var r,t=RegExp([(n.escape||R).source,(n.interpolate||R).source,(n.evaluate||R).source].join("|")+"|$","g"),o=0,a="__p+='";i.replace(t,function(n,t,r,e,u){return a+=i.slice(o,u).replace(V,P),o=u+n.length,t?a+="'+\n((__t=("+t+"))==null?'':_.escape(__t))+\n'":r?a+="'+\n((__t=("+r+"))==null?'':__t)+\n'":e&&(a+="';\n"+e+"\n__p+='"),n}),a+="';\n",a="var __t,__p='',__j=Array.prototype.join,print=function(){__p+=__j.call(arguments,'');};\n"+(a=n.variable?a:"with(obj||{}){\n"+a+"}\n")+"return __p;\n";try{r=new Function(n.variable||"obj","_",a)}catch(n){throw n.source=a,n}function e(n){return r.call(this,n,h)}t=n.variable||"obj";return e.source="function("+t+"){\n"+a+"}",e},h.chain=function(n){n=h(n);return n._chain=!0,n};h.mixin=function(r){return h.each(h.functions(r),function(n){var t=h[n]=r[n];h.prototype[n]=function(){var n=[this._wrapped];return K.apply(n,arguments),T(this,t.apply(h,n))}}),h},h.mixin(h),h.each(["pop","push","reverse","shift","sort","splice","unshift"],function(t){var r=e[t];h.prototype[t]=function(){var n=this._wrapped;return r.apply(n,arguments),"shift"!==t&&"splice"!==t||0!==n.length||delete n[0],T(this,n)}}),h.each(["concat","join","slice"],function(n){var t=e[n];h.prototype[n]=function(){return T(this,t.apply(this._wrapped,arguments))}}),h.prototype.value=function(){return this._wrapped},h.prototype.valueOf=h.prototype.toJSON=h.prototype.value,h.prototype.toString=function(){return String(this._wrapped)},"function"==typeof define&&define.amd&&define("underscore",[],function(){return h})}();