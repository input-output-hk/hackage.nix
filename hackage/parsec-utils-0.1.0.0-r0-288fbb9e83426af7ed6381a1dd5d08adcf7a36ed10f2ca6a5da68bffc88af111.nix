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
      identifier = { name = "parsec-utils"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "falconnl@gmail.com";
      author = "Remco Niemeijer";
      homepage = "";
      url = "";
      synopsis = "Utility functions and combinators for Text.Parsec";
      description = "Utility functions and combinators for Text.Parsec that\nallow more compact code in common use cases";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }