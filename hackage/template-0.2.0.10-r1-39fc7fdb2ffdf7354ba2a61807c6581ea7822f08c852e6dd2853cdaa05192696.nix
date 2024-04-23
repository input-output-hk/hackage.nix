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
      identifier = { name = "template"; version = "0.2.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johan Tibell <johan.tibell@gmail.com>";
      author = "Johan Tibell <johan.tibell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple string substitution";
      description = "Simple string substitution library that supports \\\"$\\\"-based\nsubstitution.  Meant to be used when Text.Printf or string\nconcatenation would lead to code that is hard to read but when a\nfull blown templating system is overkill.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }