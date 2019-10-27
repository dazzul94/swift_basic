
import UIKit
import SideMenu

class MySideMenuNavigationController: SideMenuNavigationController {
    
    let appDele = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDele.mySidemenu = self
        
        self.menuWidth = 250
        self.presentationStyle = .viewSlideOutMenuPartialIn

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
