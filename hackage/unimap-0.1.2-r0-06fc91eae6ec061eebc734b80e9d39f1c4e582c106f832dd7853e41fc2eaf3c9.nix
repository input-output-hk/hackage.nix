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
      identifier = { name = "unimap"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/unimap#readme";
      url = "";
      synopsis = "A union-find/map data structure";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/unimap#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."int-like" or (errorHandler.buildDepError "int-like"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
        ];
        buildable = true;
      };
      tests = {
        "unimap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."int-like" or (errorHandler.buildDepError "int-like"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."prop-unit" or (errorHandler.buildDepError "prop-unit"))
            (hsPkgs."unimap" or (errorHandler.buildDepError "unimap"))
          ];
          buildable = true;
        };
      };
    };
  }