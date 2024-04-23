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
      identifier = { name = "lens-xml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Nick Partridge";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "https://github.com/nkpart/lens-xml#readme";
      url = "";
      synopsis = "Lenses for the xml package.";
      description = "Lenses for the xml package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
      tests = {
        "lens-xml-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens-xml" or (errorHandler.buildDepError "lens-xml"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
          buildable = true;
        };
      };
    };
  }