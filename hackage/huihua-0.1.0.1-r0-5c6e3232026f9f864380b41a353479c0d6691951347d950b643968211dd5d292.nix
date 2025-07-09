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
      specVersion = "3.4";
      identifier = { name = "huihua"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copywrite, Tony Day, 2023-";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/huihua#readme";
      url = "";
      synopsis = "uiua port";
      description = "A Haskell uiua library for uiua.org.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."harpie" or (errorHandler.buildDepError "harpie"))
          (hsPkgs."markup-parse" or (errorHandler.buildDepError "markup-parse"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."string-interpolate" or (errorHandler.buildDepError "string-interpolate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."huihua" or (errorHandler.buildDepError "huihua"))
          ];
          buildable = true;
        };
      };
    };
  }