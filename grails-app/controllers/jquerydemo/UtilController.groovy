package jquerydemo

class UtilController {

    static defaultAction = "validationPluginDemo"

    def validationPluginDemo() {

    }

    def validateAge(int age){
        render age<100
    }

    def save(){
      render """******Form Submitted Successfully******"""
    }

    def callBackDemo(){

    }

    def JSONDemo(){

    }
}
