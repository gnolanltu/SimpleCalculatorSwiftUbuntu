class SimpleCalculator {
    
    func add(a:Int, b:Int) -> Int {
        return a + b
    }
 
    func sub(a:Int, b:Int) -> Int {
        return a - b
    }
    
    func mul(a:Int, b:Int) -> Int {
        return a * b
    }

    func div(a:Int, b:Int) -> Int {
        //divide by zero
        if (b == 0) {
            return 9999
        }
        return a / b
    }   
}