//
//  InterfaceController.swift
//  App_Watch1 WatchKit Extension
//
//  Created by cice on 7/4/17.
//
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    //MARK: - Variables locales
    
    var myNombre = "Mario"
    let COLOR_NARANJA = UIColor.orange
    let COLOR_AZUL = UIColor.blue
    var valorSlider : Float = 0
    
    
    
    //MARK: - Outlets
    
    @IBOutlet var myButton: WKInterfaceButton!
    @IBOutlet var mySwitch: WKInterfaceSwitch!
    @IBOutlet var mySlider: WKInterfaceSlider!
    @IBOutlet var myLabel: WKInterfaceLabel!
    
    
    //MARK: - Actions
    
    @IBAction func myButtonACTION() {
        actionUno()
    }
    
    @IBAction func mySwitchACTION(_ value: Bool) {
        
        if value{
            actionDos()
        }else{
            actionUno()
        }
    }
    
    @IBAction func mySliderACTION(_ value: Float) {
        valorSlider = value
        actionTres()
        print(valorSlider)
    }
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    //MARK: - utils
    
    func actionUno(){
    
        myButton.setTitle("Mamut")
        myButton.setBackgroundColor(COLOR_NARANJA);
        myLabel.setText("Hola mundo!")
        myLabel.setTextColor(COLOR_NARANJA)
        mySwitch.setColor(COLOR_NARANJA)
        mySwitch.setOn(false)
        mySlider.setColor(COLOR_NARANJA)
        
    }
    
    func actionDos(){
        myButton.setTitle("TEXTO switch")
        myButton.setBackgroundColor(COLOR_AZUL)
        myLabel.setText("The best")
        myLabel.setTextColor(COLOR_AZUL)
        mySwitch.setColor(COLOR_AZUL)
        mySlider.setColor(COLOR_AZUL)
    }
    
    func actionTres(){
        myLabel.setText(String(valorSlider))
        switch valorSlider {
        case 1...2:
            mySlider.setColor(COLOR_AZUL)
        case 3...4:
            mySlider.setColor(UIColor.green)
        case 5...6:
            mySlider.setColor(COLOR_NARANJA)
        case 7...8:
            mySlider.setColor(UIColor.magenta)
        case 9...10:
            mySlider.setColor(UIColor.red)
        default:
            break
        }
    }
    
    
    
    

}
