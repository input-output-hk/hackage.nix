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
      specVersion = "1.0";
      identifier = { name = "template"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "";
      url = "";
      synopsis = "Simple string substitution";
      description = "Simple string substitution library that supports\n\\\"$\\\"-based substitution.  Meant to be used when\nText.Printf or string concatenation would lead to\ncode that is hard to read but when a full blown\ntemplating system might be overkill.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }