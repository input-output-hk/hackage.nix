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
      identifier = { name = "wai-route"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2014 Roman S. Borschel";
      maintainer = "Roman S. Borschel <roman@pkaboo.org>";
      author = "Roman S. Borschel";
      homepage = "";
      url = "";
      synopsis = "Minimalistic, efficient routing for WAI";
      description = "\nSimple routing for applications using the WAI, based on an\nefficient tree structure. Routes are defined as string literals\nand path segments prefixed with a ':' indicate captures.\n\nA sample is available at: <https://github.com/romanb/wai-route/blob/master/sample/Main.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "wai-route-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-route" or (errorHandler.buildDepError "wai-route"))
            ];
          buildable = true;
          };
        };
      };
    }