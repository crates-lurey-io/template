//! TBD.

fn main() {
    // TODO: Write a binary.
    println!("2 + 3 = {}", add(2, 3));
}

fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(2, 3), 5);
    }
}
