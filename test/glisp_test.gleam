import gleeunit
import glisp

pub fn main() {
  gleeunit.main()
}

pub fn empty_test() {
  assert Ok(glisp.Nil) = glisp.run("")
}

pub fn empty_list_test() {
  assert Ok(glisp.Nil) = glisp.run("()")
}

pub fn int_test() {
  assert Ok(glisp.Int(124)) = glisp.run("124")
}

pub fn negative_int_test() {
  assert Ok(glisp.Int(124)) = glisp.run("124")
}

pub fn add_two_test() {
  assert Ok(glisp.Int(3)) = glisp.run("(+ 1 2)")
}

pub fn add_many_test() {
  assert Ok(glisp.Int(73)) = glisp.run("(+ 1 2 100 -7 -23)")
}

pub fn multiple_spaces_test() {
  assert Ok(glisp.Int(3)) = glisp.run("  (    +     1   2   ) ")
}
