//
//  EditDelegate.swift
//  Navigation
//
//  Created by 이찬호 on 2021/07/22.
//


// Protocol : 자바의 interface = 이름만 있고 기능은 없다
protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}
