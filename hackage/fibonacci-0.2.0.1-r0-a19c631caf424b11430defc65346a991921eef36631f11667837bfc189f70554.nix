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
      specVersion = "1.6";
      identifier = { name = "fibonacci"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Sebastian Fischer";
      homepage = "http://github.com/sebfisch/fibonacci";
      url = "";
      synopsis = "Fast computation of Fibonacci numbers.";
      description = "Fast computation of Fibonacci numbers. Use version @0.1.*@ if you\nprefer the Fibonacci sequence to start with one instead of\nzero. Version @0.2.*@ adds correct handling of negative arguments\nand changes the implementation to satisfy @fib 0 = 0@.\nSee <http://en.wikipedia.org/wiki/Fibonacci_number#Matrix_form> for\na description of the employed method.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }