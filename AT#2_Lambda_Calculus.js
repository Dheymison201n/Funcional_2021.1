// Curryng
/*
function soma(a, b, c){
    return a + b + c
}

function soma(a) {
    return function(b, c){
        return a + b + c
    }
}

function soma(a) {
    return function(b){
        return function(c){
            return a + b + c
        }
    }
}
*/
//------------------------------------------------------------------ Curryng ---------------------------------------------------------------------------

let r
const soma = a => b => c => a + b + c 

r = soma(1)(2)(3)
r

const PRI = a => _ => a
r = PRI(3)(7)
r

const ULT = _ => b => b
r = ULT(3)(7)
r

const TRO = f => a => b  => f(b)(a)

r = TRO(PRI)(3)(7)
r

r = TRO(ULT)(3)(7)
r

// boolean
// TRUE ? PRI : ULT
// FALSE ? PRI : ULT

const T = PRI
const F = ULT

T.inspect = () => 'Verdadeiro (PRI)'
F.inspect = () => 'Falso (ULT)'

T
F

// NOT
const NOT = a => a(F)(T)
r = NOT(F)
r

const AND = a => b => a(b)(F)

r = AND(T)(T)
r 

const OR = a => b => a(T)(b)
r = OR(F)(F)
r
