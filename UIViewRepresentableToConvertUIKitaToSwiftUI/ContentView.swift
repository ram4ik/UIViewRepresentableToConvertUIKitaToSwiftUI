//
//  ContentView.swift
//  UIViewRepresentableToConvertUIKitaToSwiftUI
//
//  Created by ramil on 07.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("Hi")
            
            //BasicUIViewRepresentable()
            //TextField("Type here...", text: $text)
            
            UIViewTextField()
                .frame(height: 55)
                .background(Color.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UIViewTextField: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let textField = UITextField(frame: .zero)
        
        let placeHolder = NSAttributedString(string: "Type here...", attributes: [.foregroundColor: UIColor.red])
        textField.attributedPlaceholder = placeHolder
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
