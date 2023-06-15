//let url = "https://kontests.net/api/v1/all";
//let response = fetch(url);
//
//response
//  .then((v) => {
//    return v.json();
//  })
//  .then((contests) => {
//    console.log(contests);
//    let cardContainer = document.getElementById("cardContainer"); // Replace "cardContainer" with the actual ID of the HTML element
//    let st = "";
//    for (let item in contests) {
//      console.log(contests[item]);
//      st += `
//        <div class="card mx-2 my-2" style="width: 22rem;">
//          <img class="card-img-top" src="Aplu.jpg" alt="${contests[item].name}">
//          <div class="card-body">
//            <h5 class="card-title">${contests[item].name}</h5>
//            <p class="card-text">Status: ${contests[item].status}</p>
//            <p class="card-text">In 24 hours? ${contests[item].status}</p>
//            <p class="card-text">Start Time: ${contests[item].start_time}</p>
//            <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
//            <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
//          </div>
//        </div>
//        <div class="card mx-2 my-2" style="width: 22rem;">
//          <img class="card-img-top" src="Aplu2.jpg" alt="${contests[item].name}">
//          <div class="card-body">
//            <h5 class="card-title">${contests[item].name}</h5>
//            <p class="card-text">Status: ${contests[item].status}</p>
//            <p class="card-text">In 24 hours? ${contests[item].status}</p>
//            <p class="card-text">Start Time: ${contests[item].start_time}</p>
//            <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
//            <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
//          </div>
//        </div>
//        <div class="card mx-2 my-2" style="width: 22rem;">
//          <img class="card-img-top" src="Aplu4.jpg" alt="${contests[item].name}">
//          <div class="card-body">
//            <h5 class="card-title">${contests[item].name}</h5>
//            <p class="card-text">Status: ${contests[item].status}</p>
//            <p class="card-text">In 24 hours? ${contests[item].status}</p>
//            <p class="card-text">Start Time: ${contests[item].start_time}</p>
//            <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
//            <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
//          </div>
//        </div>
//        <div class="card mx-2 my-2" style="width: 22rem;">
//          <img class="card-img-top" src="Aplu2.jpg" alt="${contests[item].name}">
//          <div class="card-body">
//            <h5 class="card-title">${contests[item].name}</h5>
//            <p class="card-text">Status: ${contests[item].status}</p>
//            <p class="card-text">In 24 hours? ${contests[item].status}</p>
//            <p class="card-text">Start Time: ${contests[item].start_time}</p>
//            <p class="card-text">End Time: <small class="text-muted">${contests[item].end_time}</small></p>
//            <a href="${contests[item].url}" class="btn btn-primary my-4">Visit Contest</a>
//          </div>
//        </div>
//      `;
//    }
//    cardContainer.innerHTML = st;
//  });
