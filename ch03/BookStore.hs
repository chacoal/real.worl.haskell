data BookInfo = Book Id Title [Author]
                deriving (Show)
type Id       = Int
type Title    = String
type Author   = String

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo :: BookInfo
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]


-- data BookReview = BookReview BookInfo CustomerID String
data BookReview = BookReview BookInfo CustomerID ReviewBody
type CustomerID = Int
type ReviewBody = String

type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

bookID      (Book id title auhors) = id
bookTitle   (Book id title auhors) = title
bookAuthors (Book id title authors) = authors

nicerID      (Book id _ _) = id
nicerTitle   (Book _ title _) = title
nicerAuthors (Book _ _ authors) = authors


data Customer = Customer {
                  customerID      :: CustomerID
                , customerName    :: String
                , customerAddress :: Address
                } deriving (Show)

customer2 = Customer {
              customerID = 271828
            , customerAddress = ["1048576 Disk Drive",
                                 "Milpitas, CA 95134",
                                 "USA"]
            , customerName = "Jane Q, Citizen"
            }

