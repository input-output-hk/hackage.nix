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
      specVersion = "1.8";
      identifier = { name = "raw-strings-qq"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Mikhail Glushenkov 2013";
      maintainer = "mikhail.glushenkov@gmail.com";
      author = "Mikhail Glushenkov";
      homepage = "https://github.com/23Skidoo/raw-strings-qq";
      url = "";
      synopsis = "Raw string literals for Haskell.";
      description = "A quasiquoter for raw string literals - that is, string literals that don't\nrecognise the standard escape sequences (such as @\\'\\\\n\\'@). Basically, they\nmake your code more readable by freeing you from the responsibility to\nescape backslashes. They are useful when working with regular expressions,\nDOS/Windows paths and markup languages (such as XML).\n\nSee @examples/RawRegex.hs@ for a usage example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }