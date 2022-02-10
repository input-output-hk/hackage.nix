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
      specVersion = "2.2";
      identifier = { name = "unboxed-references"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019";
      maintainer = "callan.mcgill@gmail.com";
      author = "Callan McGill";
      homepage = "https://github.com/Boarders/unboxed-references";
      url = "";
      synopsis = "A library for reference cells backed by unboxed-vectors";
      description = "\nThis package contains an interface to references backed by\nunboxed vectors\n\nFor an example of how to use it:\n\n>\n>   module Main where\n>\n>   import           Data.STRef.Unboxed\n>   import           Control.Monad.ST\n>\n>   main :: IO ()\n>   main =\n>     do\n>       print counter\n>       print mySum\n>       print strictModify\n>\n>   -- |\n>   -- Runs a for loop each time modifying the reference cell to add\n>   -- one.\n>   counter :: Int\n>   counter =\n>    runST $\n>      do\n>        ref <- newSTRefU 0\n>        for_ [1..100] $ modifySTRefU ref (+ 1)\n>        readSTRefU ref\n>   -- |\n>   -- Runs a for loop to add all the numbers between 1 and 10.\n>   mySum :: Int\n>   mySum =\n>     runST $\n>       do\n>         ref <- newSTRefU 0\n>         for_ [1..10] $ \\i -> modifySTRefU ref (+ i)\n>         readSTRefU ref\n>   -- |\n>   -- This shows that modifySTRefU is strict in its argument.\n>   strictModify :: Int\n>   strictModify =\n>     runST $\n>       do\n>         ref <- newSTRefU 0\n>         modifySTRefU ref (\\_ -> Unsafe.unsafePerformIO $ print \"Got here!\" >> pure 10)\n>         writeSTRefU ref 42\n>          readSTRefU ref\n>\n\nThis gives the following:\n\n@\n> main\n100\n55\n\"Got here!\"\n42\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."unboxed-references" or (errorHandler.buildDepError "unboxed-references"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }