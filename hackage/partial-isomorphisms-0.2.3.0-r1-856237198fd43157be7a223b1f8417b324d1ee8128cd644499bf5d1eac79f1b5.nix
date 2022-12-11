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
      specVersion = "1.12";
      identifier = { name = "partial-isomorphisms"; version = "0.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stanislav Chernichkin <schernichkin@gmail.com>";
      author = "Tillmann Rendel <rendel@informatik.uni-marburg.de>";
      homepage = "http://www.informatik.uni-marburg.de/~rendel/unparse";
      url = "";
      synopsis = "Partial isomorphisms.";
      description = "Partial isomorphisms as described in the paper:\n\nTillmann Rendel and Klaus Ostermann. Invertible Syntax Descriptions: Unifying Parsing and Pretty Printing. In /Proc. of Haskell Symposium/, 2010.\n\nThe paper also describes invertible syntax descriptions as a common interface for parsers and pretty printers. These are distributed separately in the /invertible-syntax/ package.";
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