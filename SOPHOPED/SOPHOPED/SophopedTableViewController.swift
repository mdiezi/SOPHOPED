//
//  SophopedTableViewController.swift
//  SOPHOPED
//
//  Created by Manuel Diezi on 21.08.17.
//  Copyright © 2017 Manuel Diezi. All rights reserved.
//

import UIKit

class SophopedTableViewController: UITableViewController {

    var SOPsHemNames: [String]?
    var SOPsOncNames: [String]?
    var SOPsGenNames: [String]?
    var SOPsHemPaths: [String]?
    var SOPsOncPaths: [String]?
    var SOPsGenPaths: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    
        SOPsHemNames=["Ferinject°",
                      "Venofer°",
                      "Pancytopénies",
                      "SCD-Fièvre isolée",
                      "SCD-Syndrome thoracique",
                      "SCD-Transfusions érythrocytaires",
                      "SCD-Hydroxyurée",
                      "SCD-AVC"]
        
        SOPsOncNames=["Sarcomes d'Ewing",
                      "Ostéosarcomes",
                      "Rhabdomyosarcomes-like",
                      "Rhabdomyosarcomes non-like",
                      "Rhabdomyosarcomes",
                      "Protocole Dépocyte°"]
        
        SOPsGenNames=["Lecture de frottis sanguins et médullaires",
                      "UMT-Commandes de concentrés érythrocytaires",
                      "UMT-Transfusions de concentrés érythrocytaires",
                      "UMT-Transfusions de concentrés plaquettaires",
                      "Préparation et présentation colloques VD-GE",
                      "Codes AI",
                      "Neutropénies fébriles",
                      "Procédure ponctions lombaires"]
        
        SOPsHemPaths=["Ferinject",
                      "Venofer",
                      "Pancytopenia",
                      "SCD_EF",
                      "SCD_CT",
                      "SCD_Tx",
                      "SCD_HU",
                      "SCD_AVC"]
        
        SOPsOncPaths=["Ewing",
                      "Osteosarcoma",
                      "RhabdoLike",
                      "RhabdoNonLike",
                      "Rhabdo",
                      "Depocyte"]
        
        SOPsGenPaths=["Smears",
                      "UMT_CommandeCE",
                      "UMT_Tx_CE",
                      "UMT_Tx_CP",
                      "TB",
                      "CodesAI",
                      "NF",
                      "PL_IT"]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var titleSectionHeader = String()
        if section == 0 {
            titleSectionHeader = "Hématologie"}
        else if section == 1 {
            titleSectionHeader = "Oncologie"}
        else if section == 2 {
            titleSectionHeader = "Général"}
        return titleSectionHeader
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = Int()
        if section == 0 {
            rowCount = SOPsHemNames!.count}
        else if section == 1 {
            rowCount = SOPsOncNames!.count}
        else if section == 2 {
            rowCount = SOPsGenNames!.count}
        return rowCount
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = SOPsHemNames?[indexPath.row]

        if indexPath.section == 0 {
            cell.textLabel?.text=SOPsHemNames? [indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text=SOPsOncNames? [indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text=SOPsGenNames?[indexPath.row]
            
        }
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
