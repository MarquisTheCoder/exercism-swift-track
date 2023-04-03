
func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func checkPassword(_ attempt: String) -> String{

        // gaurd use seems appropriate for a password function
        guard attempt != password else{
            return secret;
        }
        // if attempt doesnt pass gaurd. "No, can do!"
        return "Sorry. No hidden secrets here."
  }
  // checker for password
  return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let a: Int = f(room)
  let b: Int = f(a)
  let c: Int = f(b)
    
  return (a, b, c)
    
}
