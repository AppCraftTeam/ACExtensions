    import XCTest
    @testable import ACExtensions
    
    // MARK: - Mocks
    final class SomeLabel: UILabel { }
    final class SomeStackView: UIStackView { }
    final class SomeTableView: UITableView { }
    final class SomeTableViewCell: UITableViewCell { }
    final class SomeViewController: UIViewController { }
    final class SomeCollectionView: UICollectionView { }
    final class SomeCollectionViewCell: UICollectionViewCell { }
    final class SomeViewHeaderFooterView: UITableViewHeaderFooterView { }

    // MARK: - Tests
    final class ACExtensionsTests: XCTestCase {
        
        // MARK: - Properties
        var label: SomeLabel!
        var tableView: SomeTableView!
        var stackView: SomeStackView!
        var collectionView: SomeCollectionView!
        
        // MARK: - extension UIViewController
        
        func testIdentifierUIViewController() {
            XCTAssertTrue(UIViewController.identifier == "UIViewController")
        }
        
        func testCustomIdentifierUIViewController() {
            XCTAssertTrue(SomeViewController.identifier == "SomeViewController")
        }
        
        // MARK: - extension UITableViewCell
        
        func testIdentifierUITableViewCell() {
            XCTAssertTrue(UITableViewCell.identifier == "UITableViewCell")
        }
        
        func testCustomIdentifierUITableViewCell() {
            XCTAssertTrue(SomeTableViewCell.identifier == "SomeTableViewCell")
        }
        
        // MARK: - extension UICollectionViewCell
        func testIdentifierUICollectionViewCell() {
            XCTAssertTrue(UICollectionViewCell.identifier == "UICollectionViewCell")
        }
        
        func testCustomIdentifierUICollectionViewCell() {
            XCTAssertTrue(SomeCollectionViewCell.identifier == "SomeCollectionViewCell")
        }
        
        // MARK: - extension UITableView
        
        func testRegisterCellClass() {
            self.tableView = SomeTableView()
            self.tableView?.registerCellClass(SomeTableViewCell.self)
            let classes = tableView?.value(forKey: "_cellClassDict") as? [String: Any]
            XCTAssertNotNil(classes?[SomeTableViewCell.identifier])
        }
        
        func testNilCellClass() {
            self.tableView = SomeTableView()
            let classes = tableView?.value(forKey: "_cellClassDict") as? [String: Any]
            XCTAssertNil(classes?[SomeTableViewCell.identifier])
        }
        
        func testRegisterCellNib() {
            self.tableView = SomeTableView()
            self.tableView?.registerCellNib(SomeTableViewCell.self)
            let classes = tableView?.value(forKey: "_nibMap") as? [String: Any]
            XCTAssertNotNil(classes?[SomeTableViewCell.identifier])
        }
        
        func testNilCellNib() {
            self.tableView = SomeTableView()
            let classes = tableView?.value(forKey: "_nibMap") as? [String: Any]
            XCTAssertNil(classes?[SomeTableViewCell.identifier])
        }
        
        func testRegisterHeaderFooterViewClass() {
            self.tableView = SomeTableView()
            self.tableView?.registerHeaderFooterViewClass(SomeViewHeaderFooterView.self)
            let classes = tableView?.value(forKey: "_headerFooterClassDict") as? [String: Any]
            XCTAssertNotNil(classes?["SomeViewHeaderFooterView"])
        }
        
        func testNilHeaderFooterViewClass() {
            self.tableView = SomeTableView()
            let classes = tableView?.value(forKey: "_headerFooterClassDict") as? [String: Any]
            XCTAssertNil(classes?["SomeViewHeaderFooterView"])
        }
        
        func testRegisterHeaderFooterViewNib() {
            self.tableView = SomeTableView()
            self.tableView?.registerHeaderFooterViewClass(SomeViewHeaderFooterView.self)
            let classes = tableView?.value(forKey: "_headerFooterClassDict") as? [String: Any]
            XCTAssertNotNil(classes?["SomeViewHeaderFooterView"])
        }
        
        func testNilHeaderFooterViewNib() {
            self.tableView = SomeTableView()
            self.tableView?.registerHeaderFooterViewClass(SomeViewHeaderFooterView.self)
            let classes = tableView?.value(forKey: "_headerFooterClassDict") as? [String: Any]
            XCTAssertNotNil(classes?["SomeViewHeaderFooterView"])
        }
        
        // MARK: - extension UICollectionView
        
        func testRegisterInCollectionViewCellClass() {
            self.collectionView = SomeCollectionView(frame: .zero, collectionViewLayout: .init())
            self.collectionView?.registerCellClass(SomeCollectionViewCell.self)
            let classes = collectionView?.value(forKey: "_cellClassDict") as? [String: Any]
            XCTAssertNotNil(classes?[SomeCollectionViewCell.identifier])
        }
        
        func testNilInCollectionViewCellClass() {
            self.collectionView = SomeCollectionView(frame: .zero, collectionViewLayout: .init())
            let classes = collectionView?.value(forKey: "_cellClassDict") as? [String: Any]
            XCTAssertNil(classes?[SomeCollectionViewCell.identifier])
        }
        
        func testRegisterInCollectionViewCellNib() {
            self.collectionView = SomeCollectionView(frame: .zero, collectionViewLayout: .init())
            self.collectionView?.registerCellNib(SomeCollectionViewCell.self)
            let classes = collectionView?.value(forKey: "_cellNibDict") as? [String: Any]
            XCTAssertNotNil(classes?[SomeCollectionViewCell.identifier])
        }
        
        func testNilInCollectionViewCellNib() {
            self.collectionView = SomeCollectionView(frame: .zero, collectionViewLayout: .init())
            let classes = collectionView?.value(forKey: "_cellNibDict") as? [String: Any]
            XCTAssertNil(classes?[SomeCollectionViewCell.identifier])
        }
        
        // MARK: - extension UIStackView
        
        func testRemoveAllArrangedSubviews() {
            self.stackView = SomeStackView()
            self.stackView.addArrangedSubview(UIView())
            
            XCTAssertTrue(
                self.stackView.arrangedSubviews.count > 0
            )
            
            self.stackView.removeAllArrangedSubviews()
            
            XCTAssertTrue(
                self.stackView.arrangedSubviews.count == 0
            )
        }
        
        // MARK: - extension UILabel
        
        func testCalculateMaxLines() {
            let label = SomeLabel(
                frame: CGRect(
                    x: 0, y: 0, width: 200, height: 60
                )
            )
            
            label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In malesuada dui sed lectus dictum, vitae sollicitudin tortor mattis."
            XCTAssertEqual(6, label.calculateMaxLines())
        }
        
        // MARK: - extension String

        func testIsValidEmails() {
            let bar = "bar"
            let baz = "baz.baz"
            let foo = "foo@bar.com"
            XCTAssertTrue(foo.isValidEmail())
            XCTAssertFalse(bar.isValidEmail())
            XCTAssertFalse(baz.isValidEmail())
        }
        
        func testAddingPercentEncodingForUrlQueryValue() {
            let foo = "http://some.com/api/data"
            let bar = "http%3A//some.com/api/data"
            XCTAssertEqual(foo.addingPercentEncodingForUrlQueryValue(), bar)
        }
        
        func testStringClassAndObjectName() {
            XCTAssertEqual(String.className(SomeLabel.self), "SomeLabel")
            XCTAssertEqual(String.objectName(NSObject.self), "NSObject")
        }
    }
