struct PressActions: ViewModifier {
    var onPress: () -> Void
    
    func body(content: Content) -> some View {
        content
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged({ _ in
                        onPress()
                    })
            )
    }
}
extension View {
    func pressAction(onPress: @escaping (() -> Void)) -> some View {
        modifier(PressActions(onPress: {
            onPress()
        }))
    }
}