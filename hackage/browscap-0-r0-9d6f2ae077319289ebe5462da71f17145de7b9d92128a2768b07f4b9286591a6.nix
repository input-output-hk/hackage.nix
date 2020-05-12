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
      identifier = { name = "browscap"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "davean 2012-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com";
      url = "";
      synopsis = "A reader and interface for the Browser Capabilities Project data files.";
      description = "A reader and interface for the Browser Capabilities Project data files. Currently it uses a linear matcher which is slow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."lrucache" or (errorHandler.buildDepError "lrucache"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
          ];
        buildable = true;
        };
      };
    }