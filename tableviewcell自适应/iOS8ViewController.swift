//
//  iOS8ViewController.swift
//  tableviewcell自适应
//
//  Created by 姚祚成 on 16/11/21.
//  Copyright © 2016年 EMYZC. All rights reserved.
//

import UIKit

class iOS8ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
//    var contentAry:[String] = []
    
    static func storyboardInstance() -> iOS8ViewController?{
        let storyboard = UIStoryboard.init(name: String(describing: self.classForCoder()), bundle: nil)
        return storyboard.instantiateInitialViewController() as? iOS8ViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "yours"
        self.tableview.delegate = self
        self.tableview.dataSource = self
        //加上这一行即可
        self.tableview.estimatedRowHeight = 44
//        self.contentAry = ["人生有三重境界，这三重境界可以用一段充满禅机的语言来说明，这段语言便是：看山是山，看水是水；看山不是山，看水不是水；看山还是山，看水还是水","这就是说一个人的人生之初纯洁无暇，初识世界，一切都是新鲜的，眼睛看见什么就是什么，人家告诉他这是山，他就认识了山，告诉他这是水，他就认识了水","随着年龄渐长，经历的世事渐多，就发现这个世界的问题了。这个世界的问题越来越多，越来越复杂，经常是黑白颠倒，是非混淆，无理走天下，有理寸步难行，好人无好报，恶人千年。进入这个阶段，热是激情的，不平的，忧虑的，疑问的，警惕的，复杂的。人不愿意再轻易地相信什么。人在这个时候看山也感慨，看水也叹息，借古讽今，指桑骂槐。山自然不再是单纯的山，水自然不再是单纯的水。一切的一切都是人的主观意志的载体，所谓好风凭借力，送我上青云。倘若留在人生的这一阶段，那就苦了这条命了。人就会在山望了那山高，不停地攀登，争强好胜，与人比较，怎么做人，如何处世，绞尽脑汁，机关算尽，永无满足的一天，因为这个世界原本就是一个圆的，人外还有人，天外还有天，循环往复，绿水常流。而人的生命是短暂的有限的，哪里能够去与永恒和无限计较呢？","许多人到了人生的第二重境界就到了人生的终点。追求一生，劳碌一生，心高气傲一生，最后发现自己并没有达到自己的理想，于是抱恨终生。但是有一些人通过自己的修炼，终于把自己提升到了第三重人生境界。茅塞顿开，回归自然。人在这时候便会专心致志做自己应该做的事情，不与旁人有任何计较。任你红尘滚滚，自有清风朗月。面对芜杂世俗之事，一笑了之，了了有何不了。这个时候的人看山又是山，看水又是水了。正是：人本是人，不必刻意去做人；世本是世，无须精心去处世；便也是真正的做人与处世了。"];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension iOS8ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentAry.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "iOS8Cell"
        let cell = tableView .dequeueReusableCell(withIdentifier: id) as UITableViewCell?
        cell?.textLabel?.numberOfLines = 0;
        cell?.textLabel?.text = contentAry[indexPath.row]
        return cell!
    }
}
