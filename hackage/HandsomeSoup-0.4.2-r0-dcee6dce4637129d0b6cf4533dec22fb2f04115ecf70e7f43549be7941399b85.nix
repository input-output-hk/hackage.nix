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
    flags = { network-uri = true; buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HandsomeSoup"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "https://github.com/egonSchiele/HandsomeSoup";
      url = "";
      synopsis = "Work with HTML more easily in HXT";
      description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-http" or (errorHandler.buildDepError "hxt-http"))
        ] ++ [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
      exes = {
        "handsomesoup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HandsomeSoup" or (errorHandler.buildDepError "HandsomeSoup"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = true;
        };
      };
    };
  }