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
      specVersion = "1.10";
      identifier = { name = "n2o"; version = "0.11.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marat Khafizov (c)";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "Abstract Protocol Loop";
      description = "Embeddable Application Protocol Loop";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "n2o-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."n2o" or (errorHandler.buildDepError "n2o"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }