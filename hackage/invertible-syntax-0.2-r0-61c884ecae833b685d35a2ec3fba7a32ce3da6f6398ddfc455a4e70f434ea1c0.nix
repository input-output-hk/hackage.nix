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
      identifier = { name = "invertible-syntax"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rendel@informatik.uni-marburg.de";
      author = "Tillmann Rendel";
      homepage = "http://www.informatik.uni-marburg.de/~rendel/unparse";
      url = "";
      synopsis = "Invertible syntax descriptions for both parsing and pretty printing.";
      description = "Invertible syntax descriptions as a common\ninterface for parser combinator and pretty\nprinting libraries, as described in the paper:\n\nTillmann Rendel and Klaus Ostermann.\nInvertible Syntax Descriptions:\nUnifying Parsing and Pretty Printing.\nIn /Proc. of Haskell Symposium/, 2010.\n\nThe distribution contains a file\n/Example.lhs/ with the example grammar from\nthe paper.\n\nThe paper also describes partial isomorphisms.\nThese are distributed separately in the\n/partial-isomorphism/ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."partial-isomorphisms" or (errorHandler.buildDepError "partial-isomorphisms"))
          ];
        buildable = true;
        };
      };
    }