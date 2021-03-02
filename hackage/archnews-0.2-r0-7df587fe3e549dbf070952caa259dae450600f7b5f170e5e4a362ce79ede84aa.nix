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
      identifier = { name = "archnews"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart ";
      homepage = "http://archhaskell.wordpress.com/";
      url = "";
      synopsis = "Convert Arch Linux package updates in RSS to pretty markdown";
      description = "Convert Arch Linux package updates in RSS to pretty markdown";
      buildType = "Simple";
      };
    components = {
      exes = {
        "archnews" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            ];
          buildable = true;
          };
        };
      };
    }