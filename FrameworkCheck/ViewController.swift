//
//  ViewController.swift
//  FrameworkCheck
//
//  Created by Tung Nguyen on 3/3/21.
//

import UIKit
import TripiFlightKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tripiWasTapped(_ sender: Any) {
        let params = ["caid": 20, "accessToken": "eyJhbGciOiJSUzI1NiIsImtpZCI6IjdjN2JlNTE0LTNiOWUtNDExYi1iZmYyLTQ2NGJhOTQ5ZGFmZSIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL29hdXRoLnN0YWdlLnRla29hcGlzLm5ldCIsImF1ZCI6InRyaXBpLWZsaWdodDo5Yjg2MzcxMC1mN2Y4LTExZWEtYWRjMS0wMjQyYWMxMjAwMDIiLCJpYXQiOjE2MTQ3NTU0NTQsImV4cCI6MTYxNDc1NTc1NCwiYXV0aF90aW1lIjoxNjE0NzU1NDU0LCJzdWIiOiJiYzRlYWJmYTQ1OWM0MzQxYWZkN2U4NWMwNWI0OTRlOCIsIm5hbWUiOiJUw7luZyBOZ3V54buFbiBYdcOibiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ0tlWnFyUTI3TTc1RGoteVpBYVA4QnAzSk5FRlZ1STNUc1hRUmo9czk2LWMiLCJlbWFpbCI6InR1bmcubnhAdGVrby52biIsInBob25lX251bWJlciI6bnVsbCwiYWRkcmVzcyI6bnVsbCwiYmlydGhkYXkiOm51bGx9.ZU7k9x98-MUKEASvi9JWTnUE-ZfYM5V8oVuPGcJy8BjvvPAGD2cVkorpCAU1dLiLJWCpVYWt7mg2kySwIT4wJgEAQG0ETF5-UiN2IL1DYbgzNI-Kjxo2-2a2VfQEYWX_lQS-f3iLwMOCruZzJJ4T_VMEymbGTTE2N6EplK5KMT2lXcGXJrmqlUJ55FxBmvxwcjneLQ1uKUGUeXtGT3lmaW6XMpkz8wKAfZ34AF3yAD4AIjqkkNM_Ki5a_2Yihh7r-GqDmzX-AtTHXuPtcm1YsVigT-RJ9noRPmgcgphNsfnBSK6hH2YCRX_1mFNH-1XwZwnQ_kN_M4I2U3ImRf8sPdy-jFERJdPcdBP15wde5zzlSlfZiXuf7CQJffz5F87tu9N4Ur__ax7dW3oGfLn_VulDkkCqPkq4T9JBBqfDylHlabCxVQBp1CEW1boBIrUQ63k31zSxGOCS3pk3od71sI-yhuNG_MA1qcjqvRrXpRa19byEaV1Nk0B-m7E0GBS-gr45pYjKMg9qDMVGk5vwHwscKJXgqNmHJMWCboBK3PmhG_qCFrQ6ANHhsreLcZWXzN43FKw9raCXwfpFU1Fis-fE69xck7U3d5ySpZ0lf-bMbchJ5MBGODDDA32uDEgzkOum-HQih2uG4ImIYWFzxzjak1v2mpkCwXFREXdjQLU", "appToken": "arxXh3aS6aPJSJGAqnNzk", "backButtonIconName": "back", "isHideBottomBar": false, "lang": "vi", "provider": "teko", "buttonRadius": "4"] as [String : Any]
        DispatchQueue.global().async {
            TripiFlightKit.shared.callFlightSDK(params: params, delegate: self) { (error, viewController) in
                self.navigationController?.pushViewController(viewController!, animated: true)
            }
        }
    }
    
}


extension ViewController: TripiFlightKitDelegate {
    func didBookOrderWith(jsonData: Data?) {
        
    }
    
    func didBackFromSDK() {
        
    }
    
    
}


