struct SwiftTips {
    // 查找 app coredata 保存目录
    func findAppDirectory {
        if let directoryLocation = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).last {
            print("Documents Directory: \(directoryLocation)Application Support")
        }
    }
}
