// Call the dataTables jQuery plugin
$(document).ready(function () {
    cargarMuebles();

});


async function cargarMuebles(){
    //----------------------------------------------------------------------------------------------------
    
    const requestMuebles = await fetch('control/administracion/muebles', {
        method: 'GET',
        headers: {
            'Accept' : 'application/json',
            'Content-Type' : 'application/json'
        }
    });
    //-------------------------------------------------------------------------------------------------------
    
    const Muebles = await requestMuebles.json();
    console.log(Muebles);

    let listHtml = '';

    for (let muebleElement of Muebles){
        let mueble = `<div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="${muebleElement.urlImage}" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${muebleElement.nombre}</h5>
                                    <!-- Product price-->
                                    ${muebleElement.dimensiones} <br>
                                    <h4 class="fw-bolder">$${muebleElement.precio}</h4>
                                    <h6 class="fw-light">${muebleElement.tipoHabitacion}</h6>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Check</a></div>
                            </div>
                        </div>
                    </div>`;
        listHtml += mueble;
    }
    document.querySelector("#products").outerHTML = listHtml;

}


async function superFiltro(){
    let datosHabitacion = {}
    datosHabitacion.high = document.getElementById("HIGH").value;

    datosHabitacion.front = document.getElementById("FRONT").value;
    datosHabitacion.bottom = document.getElementById("BOTTOM").value;
    datosHabitacion.typeRoom = document.getElementById("typeRoom").value;
    datosHabitacion.palette = document.getElementById("palette").value;
    console.log(datosHabitacion.high);
    console.log(datosHabitacion.front);
    console.log(datosHabitacion.bottom);
    console.log(datosHabitacion.typeRoom);
    console.log(datosHabitacion.palette);

    if(datosHabitacion.front ==="" || datosHabitacion.high ==="" || datosHabitacion.bottom ==="" || datosHabitacion.typeRoom ==="" || datosHabitacion.palette ===""){
        alert("Coloca todos los datos!");
        return;
    }
    //----------------------------------------------------------------------------------------------------
    const requestMuebles = await fetch('control/administracion/mueblesFiltrados', {
        method: 'POST',
        headers: {
            'Accept' : 'application/json',
            'Content-Type' : 'application/json'
        },
        body: JSON.stringify(datosHabitacion)
    });
    //----------------------------------------------------------------------------------------------------
    const Muebles = await requestMuebles.json();
    console.log(Muebles.length);
    let listHtml = '<div id="act" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">';

    for (let muebleElement of Muebles){
        let mueble = `<div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="${muebleElement.urlImage}" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${muebleElement.nombre}</h5>
                                    <!-- Product price-->
                                    ${muebleElement.dimensiones} <br>
                                    <h4 class="fw-bolder">$${muebleElement.precio}</h4>
                                    <h6 class="fw-light">${muebleElement.tipoHabitacion}</h6>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Check</a></div>
                            </div>
                        </div>
                    </div>`;
        listHtml += mueble;
    }
    listHtml += "</div>";
    document.querySelector("#act").outerHTML = listHtml;


}
