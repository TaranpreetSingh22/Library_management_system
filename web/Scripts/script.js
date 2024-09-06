      let open_btn=document.getElementById('menu_bar');

      let list=document.getElementById('mobile_menu_list');

      let list_values=document.querySelector("#mobile_menu_list ul");
      
      let initial=false;
      
      open_btn.addEventListener("click",
      function () {
        if (initial===false) {
          //list.style.display="flex";
          list.style.animation="sideopen 3s ease-out forwards"
          list_values.style.display="flex";
          initial=true;
        }
       else {
         //list.style.display="none";
         list.style.animation="sideclose 1s ease-out forwards";
         list_values.style.display="none";
         initial=false;
       }
      });


      //background changing animation

      let body=document.getElementById("changebg");
      let images=[
        "./images/bg1.jpg",
        "./images/bg2.jpg",
        "./images/bg3.jpg",
        "./images/bg4.jpg",
        "./images/bg5.jpg"
      ];
      
      let i=Math.floor(Math.random()*(images.length));
      let interval=3000;

      const backgroundChange=()=>{
        body.src=images[i];
          i+=1;
         if(i===(images.length)+1)
         {
           i=0;
           backgroundChange();
         }
      };


      backgroundChange();
       setInterval(() => {
         backgroundChange();
       }, interval);
      
   /*   //number animation
      var numberElement = document.getElementById("number");
    
    let range=Number(numberElement.textContent);

    // Start the count from 0
    var count = 0;
    numberElement.textContent="";
    
    function displayNumber() {
      numberElement.textContent = count;
      count++;

      // repeat till count reaches the expected number
      if (count <= range) {
        setTimeout(displayNumber, 50);
      }
    }
    setTimeout(displayNumber, 50);*/