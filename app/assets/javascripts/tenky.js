var t;
selecttext();

function selecttext(o) {
t = o;
}
function keyEvent(c) {
t.value = (t.value=='0')? c: t.value+c;
}
function allClear() {
t.value = "";
}