document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  const favSubmit = (e) => {
    e.preventDefault();

    const newPlaceInput = document.querySelector('.favorite-input');
    const newPlace = newPlaceInput.value;
    newPlaceInput.value = "";

    const newLi = document.createElement('li');
    newLi.textContent = newPlace;

    const ul = document.getElementById('sf-places');
    ul.appendChild(newLi);
  };

  const placeSubmitButton = document.querySelector('.favorite-submit');
  placeSubmitButton.addEventListener('click', favSubmit);

  
  const showPhotos = (e) => {
    const photoDiv = document.querySelector('.photo-form-container');
    if (photoDiv.className === 'photo-form-container') {
      photoDiv.className = 'photo-form-container hidden';
    } else {
      photoDiv.className = 'photo-form-container';
    }
  };

  const photoShowButton = document.querySelector('.photo-show-button');
  photoShowButton.addEventListener('click', showPhotos);

  const photoSubmit = (e) => {
    e.preventDefault();
    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPicLi = document.createElement("li");
    newPicLi.appendChild(newImg);

    const dogList = document.querySelector(".dog-photos");
    dogList.appendChild(newPicLi);
  };

const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", photoSubmit);
});