/*
fetch('http://127.0.0.1:8000/api/cours/?fields=nom')
.then((res) => res.json())
.then(json => console.log(json))

fetch('http://127.0.0.1:8000/api/cours/?fields=date_debut')
.then((res) => res.json())
.then(json => console.log(json))

fetch('http://127.0.0.1:8000/api/cours/?fields=programme')
.then((res) => res.json())
.then(json => console.log(json))

fetch('http://127.0.0.1:8000/api/cours/?fields=year')
.then((res) => res.json())
.then(json => console.log(json))

const img = document.getElementById('img');
*/
/*
function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
  return parent.appendChild(el);
}

const ul = document.getElementById('authors');
const url = 'http://127.0.0.1:8000/api/cours/';

fetch(url)
.then((resp) => resp.json())
.then(function(data) {
  let authors = data.results;
  return authors.map(function(author) {
    let li = createNode('li');
    let img = createNode('img');
    let span = createNode('span');
    img.src = author.picture.medium;
    span.innerHTML = `${author.name.first} ${author.name.last}`;
    append(li, img);
    append(li, span);
    append(ul, li);
  })
})
.catch(function(error) {
  console.log(error);
});
*/

let btn1 = document.getElementById("showCourses");

btn1.addEventListener('click', () => {

    // fetch request to api

    fetch('http://127.0.0.1:8000/api/cours')
    .then((response) => {
        return (response.json());
    })
    .then((data) => {

        let container = document.getElementById('container');

        let template = `
            <h2>Cours Deuxième année</h2>
        `
        data.forEach((cours) => {
            template += `
                <div class="card">
                <div class="card-header">
                    <img src="${cours.image_url}" alt="image illustrant le cours">
                </div>
                <div class="card-body">
                <h3>${cours.nom}</h3>
                <p class="desc_container">${cours.description}</p>
                <p class="prog_container">${cours.programme}</p>
                <p class="year_container">Année: ${cours.year}</p>
                <div class="flex">
                <p class="begin">${cours.date_debut}</p>
                <p> - </p>
                <p class="end_date">${cours.date_fin}</p>
                </div>
                </div>
                </div>
            `
        })

        container.innerHTML = template;
    })
})