//
//  ViewController.swift
//  tableView
//
//  Created by Alumno on 11/3/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit
//Implementar protocolos de Data Source y Delegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno]=[]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! celdaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text=alumnos[indexPath.row].matricula
        celda.lblCarrera.text=alumnos[indexPath.row].carrera
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alumnos.append(Alumno(nombre: "Jose Jose", matricula: "179154", carrera: "Lic. en Administración"))
        alumnos.append(Alumno(nombre: "El Carlos", matricula: "179153", carrera: "Ing. en Psicologia"))
        alumnos.append(Alumno(nombre: "Pepe Sech", matricula: "197546", carrera: "Lic. en Gastronomía"))
        // Do any additional setup after loading the view.
    }


}

