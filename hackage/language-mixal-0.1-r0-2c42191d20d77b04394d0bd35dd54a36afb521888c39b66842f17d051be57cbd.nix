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
      identifier = { name = "language-mixal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Daugherty, 2013";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "http://github.com/jtdaugherty/language-mixal/";
      url = "";
      synopsis = "Parser, pretty-printer, and AST types for the MIXAL\nassembly language";
      description = "MIXAL parser and pretty-printer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = {
        "mixal-pretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."language-mixal" or (errorHandler.buildDepError "language-mixal"))
            ];
          buildable = true;
          };
        };
      };
    }