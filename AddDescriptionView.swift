//
//  AddDescriptionView.swift
//  Pokemon
//
//  Created by Justin Spencer on 4/28/24.
//

import SwiftUI
import SwiftData

struct AddDescriptionView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @Binding var descriptions: [Description]
    @State private var title = ""
    @State private var review = ""
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section("Title"){
                    TextField("Title", text: $title)
                }
                
                Section("Write a description") {
                        TextEditor(text: $review)
                        }
                
                Section {
                    Button("Save") {
                        let newDescription = Description(title: title, review: review)
                        modelContext.insert(newDescription)
                        descriptions.append(newDescription)
                        dismiss()
                       
                    }
                }
            }
            
            .navigationTitle("Add description")
        }
    }
}



