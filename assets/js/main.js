window.addEventListener('load',function(){
    let idMenu=document.getElementById('opcionesMenu')
    let optP=idMenu.getElementsByTagName('p')
    let opcLi=idMenu.getElementsByTagName('li')
    for(let i=0;i<optP.length;i++){
        optP[i].addEventListener('click',function(){
            if(opcLi[i].className==='depliega'){
                opcLi[i].classList.toggle('depliega')
            }else{
                for(let j=0;j<optP.length;j++){
                    if(opcLi[j].className==='depliega'){
                        opcLi[j].classList.toggle('depliega')
                    }
                }
                opcLi[i].classList.toggle('depliega')
            }
        })
    }
})
