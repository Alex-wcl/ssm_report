function fontSize(){
    var fontSize = 100,
        oDoc = document.documentElement,
        iWidht = oDoc.clientWidth;
    if(!iWidht){
        return
    }else if(iWidht > 640){
        iWidht = 640
    }
    oDoc.style.fontSize = iWidht / 320 * fontSize + 'px';
}
if(document.addEventListener){
    var status = 'orientationchange' in window ? 'orientationchange' : 'resize';
    document.addEventListener(status,fontSize,false);
    document.addEventListener('DOMContentLoaded',fontSize,false);
}else{
    fontSize();
}