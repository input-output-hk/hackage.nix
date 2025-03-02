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
      specVersion = "2.4";
      identifier = { name = "commutative-semigroups"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Nathan van Doorn, 2021–2022 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Nathan \"Taneb\" van Doorn";
      homepage = "";
      url = "";
      synopsis = "Commutative semigroups";
      description = "A commutative semigroup is a semigroup where the order of arguments to mappend does not matter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }