//
//  ViewController.swift
//  Kumachan
//
//  Created by 林辰澤 on 2022/7/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cdImageView: UIImageView!
    
    @IBOutlet weak var cdSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var cdPageControl: UIPageControl!
    
    @IBOutlet weak var cdTextView: UITextView!
    
    //運用陣列
    let cdImages = ["∞無限","夢想成真","PRO"]
    let cdTextViews = ["不同一般的嘻哈敘事手法，《∞無限》以人工智慧題材創造全新格局，以「人格特化療程」的科幻概念貫穿專輯首尾，用詼諧幽默的語調抒發熊仔的敏銳觀察與想像力。","《夢想成真Sisyphus’Dream》如同薛西弗斯推巨石上山的夢，帶領大家「身入其境」，經歷一位不得志地下饒舌歌手，在夢想成真過程中的一切喜怒哀樂：讓專輯的歌曲不只是單獨存在的歌曲，內涵更為具體、深刻。","《PRO》，將以熊仔最擅長的黑色幽默，直白地向大眾拋出疑問，光鮮亮麗的職業背後，如何面對挫折與職業倦怠？熊仔和我們也還在思考，也或許這個問題至始至終都無法解答，那就來聽聽熊仔在《PRO》中的苦笑人生觀。"]
    
    //定義變數 顯示陣列的排序
    var selectNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        syncChange()
    }

    //同步改變
    func syncChange() {
        cdImageView.image = UIImage(named: cdImages[selectNumber])
        cdTextView.text = cdTextViews[selectNumber]
        cdPageControl.currentPage = selectNumber
        cdSegmentedControl.selectedSegmentIndex = selectNumber
    }
    
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        selectNumber = sender.currentPage
        syncChange()
    }
    
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        selectNumber = sender.selectedSegmentIndex
        syncChange()
    }
    
    @IBAction func nextPage(_ sender: Any) {
        if selectNumber == cdImages.count-1 {
            selectNumber = 0
        }else{
            selectNumber += 1
        }
        syncChange()
    }
    
    
    @IBAction func prePage(_ sender: Any) {
        if selectNumber == 0 {
            selectNumber = cdImages.count-1
        }else{
            selectNumber -= 1
        }
        syncChange()
    }
    
    
    
    

}

//不同一般的嘻哈敘事手法，《∞ 無限》以人工智慧題材創造全新格局，以「人格特化療程」的科幻概念貫穿專輯首尾，用詼諧幽默的語調抒發熊仔的敏銳觀察與想像力。
//
//《夢想成真 Sisyphus’ Dream》如同薛西弗斯推巨石上山的夢，帶領大家「身入其境」，經歷一位不得志地下饒舌歌手，在夢想成真過程中的一切喜怒哀樂：讓專輯的歌曲不只是單獨存在的歌曲，內涵更為具體、深刻。
//
//《PRO》專輯，將以熊仔最擅長的黑色幽默，直白地向大眾拋出疑問，希望能讓聽者開始反思，在夢想職業化後，日復一日、年復一年，生活像一張磨砂紙，磨去了我們的熱誠與熱愛，下一步又將往何處？光鮮亮麗的職業背後，如何面對挫折與職業倦怠？熊仔和我們也還在思考，也或許這個問題至始至終都無法解答，那就來聽聽熊仔在《PRO》中的苦笑人生觀。
