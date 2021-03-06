//
//  HGMWKWebViewController.swift
//  nshipsterSwift
//
//  Created by Nick on 2018/7/27.
//  Copyright © 2018年 Nick. All rights reserved.
//

import UIKit
import WebKit

class HGMWKWebViewController: UIViewController {

    var webView : WKWebView!
    
    override func loadView() {
        let webViewConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webViewConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "wkwebview"
        let htmlstr = String("<!doctypehtml><html><head><metacharset='utf-8'/></head><body><p>&nbsp;&nbsp;&nbsp;&nbsp;怎样判断宝宝便秘了?宝宝便秘应该怎么办?很多妈妈都会遇到这种难题。<br><p>&nbsp;&nbsp;&nbsp;&nbsp;有的宝宝可能会三四天才排便次，但如果排便比较顺畅的话，则不能算是便秘;反之，宝宝即使每天都排便，然而排出的便又干又少，同时伴食欲不佳、腹胀，也可认定为便秘。引起婴幼儿便秘的因素有饮食不足、食物成分不当、肠道功能失常、体格与生理的异常及精神因素所造成的。<br><h3>应对宝宝便秘的良策</h3><br><p><br>、矫正饮食<br><p>&nbsp;&nbsp;&nbsp;&nbsp;如果因饮食不足造成便秘，应增加食物摄入量。母乳喂养的宝宝应更频繁地哺乳，人工喂养的宝宝则应增加配方奶量。<br><br>二、食补纤维素<br><p>&nbsp;&nbsp;&nbsp;&nbsp;可在饮食中添加西红柿汁、橘子汁、菜汁等，或把婴儿蜂蜜加在温水中，每天给宝宝喝60～90毫升，促进肠道蠕动。较大些宝宝便秘时，可给吃些粗谷类的食物或红薯，还要多吃芹菜、韭菜等粗纤维蔬菜，多喝白水，尤其在过多摄取高蛋白、高热量食物后，更要及时喝水及吃果蔬。如果是母乳喂养，妈妈自身也应及时调整饮食，多吃蔬菜、水果和粗粮。<br><br>三、增加肠道益生菌<br><p>&nbsp;&nbsp;&nbsp;&nbsp;可以给宝宝补充些益生菌制剂，尤其要含有双歧杆菌、乳酸菌、粪肠球菌等肠道益生菌。<br><br>四、腹部按摩<br><p>&nbsp;&nbsp;&nbsp;&nbsp;右手四指并拢，在孩子的脐击按顺时针方向轻轻推揉按摩。这样不仅可以帮助排便而且有助化。<br><br>五、适当运动<br><p>&nbsp;&nbsp;&nbsp;&nbsp;让宝宝积极进行户外运动，如跑、爬、跳、骑小车、踢球等，以此增强腹肌的力量，并且可促进肠道蠕动。对于胆小的宝宝，尽量在家里排便，不要轻易改变排便环境。当宝宝出现类似情况时要及早做心理疏导。<br><br>六、直肠或肛门局部刺激<br><p>&nbsp;&nbsp;&nbsp;&nbsp;用手指蘸上肥皂水或婴儿油在宝宝肛门处按摩，这种方法能有效刺激肛门，使肛门括约肌松弛，利于排便。<br></p><body></html>")
        webView.loadHTMLString(htmlstr, baseURL: nil)
        
        let source = """
    document.body.style.background = "#777";
"""
        
        let userScript = WKUserScript(source: source,
                                      injectionTime: .atDocumentEnd,
                                      forMainFrameOnly: true)
        
        let userContentController = WKUserContentController()
        userContentController.addUserScript(userScript)
        
        let configuration = WKWebViewConfiguration()
        configuration.userContentController = userContentController
        self.webView = WKWebView(frame: self.view.bounds,
                                 configuration: configuration)
        
    }

}


extension HGMWKWebViewController: WKUIDelegate {
    
    func webViewDidClose(_ webView: WKWebView) {
        print("webViewDidClose")
    }
    
}
