//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Nikita Byzov on 30.06.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet weak var AvatarImageView: UIImageView!
    @IBOutlet weak var UserNamelabel: UILabel!
    @IBOutlet weak var UserBDay: UILabel!
    @IBOutlet weak var UserTown: UILabel!
    @IBOutlet weak var UserSignature: UITextView!

    // когда создаем вью из xib
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }

    private func setup(){
    let view = self.loadViewFromXib()
        self.addSubview(view)
        view.frame = self.bounds
    }

    private func loadViewFromXib() -> UIView {
        // ищем среди всех файлов в бандле файл с именем нашего файла, где описана реализация XIB
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
            return UIView()
        }
        return view
    }


}
