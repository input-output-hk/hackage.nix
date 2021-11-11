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
      specVersion = "1.10";
      identifier = { name = "unicode-show"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Takayuki Muranushi";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://github.com/haskell-jp/unicode-show#readme";
      url = "";
      synopsis = "print and show in unicode";
      description = "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters.\n\nSee <http://github.com/haskell-jp/unicode-show#readme README> for usage.\n\nRun ghci with  @-interactive-print@ flag to print unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "unicode-show-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
            ];
          buildable = true;
          };
        };
      };
    }