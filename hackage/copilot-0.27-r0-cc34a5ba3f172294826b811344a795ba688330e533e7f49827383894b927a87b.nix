{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "copilot"; version = "0.27"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lee Pike <leepike@galois.com>";
      author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller";
      homepage = "http://leepike.github.com/Copilot/";
      url = "";
      synopsis = "A stream DSL for writing embedded C monitors.";
      description = "Can you write a list in Haskell? Then you can write embedded C code using\nCopilot. Here's a Copilot program that computes the Fibonacci sequence (over\nWord 64s) and tests for even numbers:\n\n> fib :: Streams\n> fib = do\n>  let f = varW64 \"fib\"\n>  let t = varB \"t\"\n>  f .= [0,1] ++ f + (drop 1 f)\n>  t .= even f\n>    where even :: Spaec Word64 -> Spec Bool\n>          even w' = w' `mod` 2 == 0\n\nCopilot contains an interpreter, a compiler, and uses a model-checker to check\nthe correctness of your program. The compiler generates constant time and\nconstant space C code via Tom Hawkin's Atom (thanks Tom!). Copilot was\noriginally developed to write embedded monitors for more complex embedded\nsystems, but it can be used to develop a variety of functional-style embedded\ncode.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."atom" or (errorHandler.buildDepError "atom"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }