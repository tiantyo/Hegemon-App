import SwiftUI

struct EventDetail: View {
    @Binding var event: Event
    let isEditing: Bool
    
    @State private var isPickingSymbol = false
    @State private var newStickyNote: String = ""
    @State private var stickyNotes: [String] = []
    @State private var filledStars: Int = 0
    @State private var noteText: String = ""
    @State private var notes: [String] = []
    
    var body: some View {
        List {
            HStack {
                Button {
                    isPickingSymbol.toggle()
                } label: {
                    Image(systemName: event.symbol)
                        .sfSymbolStyling()
                        .foregroundColor(event.color)
                        .opacity(isEditing ? 0.3 : 1)
                }
                .buttonStyle(.plain)
                .padding(.horizontal, 5)
                
                if isEditing {
                    TextField("Title Your Mission", text: $event.title)
                        .font(.title2)
                } else {
                    Text(event.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }
            
            if isEditing {
                DatePicker("Date", selection: $event.date)
                    .labelsHidden()
                    .listRowSeparator(.hidden)
                    .environment(\.locale, .init(identifier: "en"))
            } else {
                HStack {
                    Text(event.date, style: .date)
                    Text(event.date, style: .time)
                }
                .listRowSeparator(.hidden)
            }
            
            Text("Mission Manifest")
                .fontWeight(.bold)
            
            ForEach($event.tasks) { $item in
                TaskRow(task: $item, isEditing: isEditing)
            }
            .onDelete(perform: { indexSet in
                event.tasks.remove(atOffsets: indexSet)
            })
            
            Button {
                event.tasks.append(EventTask(text: "", isNew: true))
            } label: {
                HStack {
                    Image(systemName: "plus")
                    Text("Plus One")
                }
            }
            .buttonStyle(.borderless)
            
            HStack {
                Text("Mission-0-Meter: ")
                    .fontWeight(.bold)
                
                ForEach(Array(0..<5), id: \.self) { index in
                    Button(action: {
                        event.selectedStarCount = index + 1
                    }) {
                        Image(systemName: index < event.selectedStarCount ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.title)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            
            TextField("Drop Your Highlights Here . . .", text: $newStickyNote)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .cornerRadius(3)
            
            Button(action: {
                if !newStickyNote.isEmpty {
                    event.stickyNotes.append(newStickyNote)
                    newStickyNote = ""
                    saveNotes()
                }
            }) {
                Text("Save Highlight")
                    .foregroundColor(.white)
            }
            .buttonStyle(.borderedProminent)
            .disabled(newStickyNote.isEmpty)
            .padding(.bottom)
            
            if !event.stickyNotes.isEmpty {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Highlight")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    ForEach(event.stickyNotes.indices, id: \.self) { index in
                        HStack {
                            Text(event.stickyNotes[index])
                                .padding(8)
                                .background(Color.indigo)
                                .cornerRadius(8)
                            
                            Spacer()
                            
                            Button(action: {
                                event.stickyNotes.remove(at: index)
                                saveNotes()
                            }) {
                                Image(systemName: "trash.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .padding(.top, 5)
            }
            
            Section(header:
                        Text("Mission Memoirs")
                .fontWeight(.bold)
                .padding(.vertical)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            ) {
                VStack(alignment: .leading) {
                    TextField("Add Your Memoir Here . . .", text: $noteText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                        .frame(minHeight: 100)
                    
                    Button(action: {
                        if !noteText.isEmpty {
                            event.notes.append(noteText)
                            noteText = ""
                            saveNotes()
                        }
                    }) {
                        
                        Text("Save Memoir")
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(noteText.isEmpty)
                    .padding(.bottom)
                }
                
                if !event.notes.isEmpty {
                    ForEach(event.notes.indices, id: \.self) { index in
                        HStack {
                            Text(event.notes[index])
                                .padding(.vertical, 4)
                            
                            Spacer()
                            
                            Button {
                                event.notes.remove(at: index)
                                saveNotes()
                            } label: {
                                Image(systemName: "trash.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                } else {
                    Text("No memoir added yet.")
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isPickingSymbol) {
            SymbolPicker(event: $event)
        }
        .onAppear {
            loadNotes()
        }
    }
    
    func saveNotes() {
        UserDefaults.standard.set(event.stickyNotes, forKey: "\(event.id)_StickyNotes")
        UserDefaults.standard.set(event.notes, forKey: "\(event.id)_Notes")
    }
    
    func loadNotes() {
        if let savedStickyNotes = UserDefaults.standard.stringArray(forKey: "\(event.id)_StickyNotes") {
            event.stickyNotes = savedStickyNotes
        }
        if let savedNotes = UserDefaults.standard.stringArray(forKey: "\(event.id)_Notes") {
            event.notes = savedNotes
        }
    }
    
    func clearNotes() {
        UserDefaults.standard.removeObject(forKey: "\(event.id)_StickyNotes")
        UserDefaults.standard.removeObject(forKey: "\(event.id)_Notes")
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(event: .constant(Event.example), isEditing: true)
    }
}
