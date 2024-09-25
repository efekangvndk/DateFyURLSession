//
//  HomeScreeenVM.swift
//  Datefy
//
//  Created by Efekan Güvendik on 22.09.2024.
//

import SwiftUI

class HomeScreeenVM : ObservableObject{
    
    @Published var keyWord: String = ""
    @Published var resultFood: String = ""
    
    private var networkCall : NetworkCall       //Bu initializer işlemi ile eğer NetworkCall'da bir işlem dönemyecekse yada başka bir servis ile işlem yapacak isek
    //Ayrı ayrı ele alım yaparız bu da bize sadece networkCall ile işlem sağlamama özgürlüğü verecekdir.
    init(networkCall: NetworkCall = NetworkCall()){
        self.networkCall = networkCall              //AÇIKLAMA: bir başlatıcı yani init işlemi açıldı ve networkCall değişkenini -> NetworkCall nesnesini tutar.ve                                                 varsayılan değer olarak NetworkCall kullanır. Yani, eğer dışarıdan bir NetworkCall nesnesi verilmezse, bu                                                     initializer içinde yeni bir NetworkCall nesnesi oluşturulacaktır. Bu, kullanım kolaylığı sağlar çünkü kullanıcı ya "                                          özel bir NetworkCall nesnesi sağlayabilir yada varsayılan bir nesne kullanabilir.
    }
    
//    let vegetablesName : [String] = ["Pancakes","Kapsalon", "Koshari"] test amaçlı kelime döndürme.
    
    
    func checkKeyWords(){
        networkCall.leadGetData { meals in //leadGetData Sunucudan verileri almak için bir istek yapar.
            if let meal = meals.first(where: {$0.strMeal?.contains(self.keyWord) == true }) { //bunu çok anlamadım.
                self.resultFood = meal.strMeal ?? "\(self.keyWord) mevcuttur."
            } else {
                self.resultFood = "\(self.keyWord) mevcut değildir."
            }
        }
    }
}




//        if vegetablesName.contains(keyWord){
//            resultFood = "\(keyWord) mevcuttur."
//        } else {
//            resultFood = "\(keyWord) mevcut değildir."
//        }
