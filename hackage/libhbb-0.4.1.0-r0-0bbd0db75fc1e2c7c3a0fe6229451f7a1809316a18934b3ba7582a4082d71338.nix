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
      identifier = { name = "libhbb"; version = "0.4.1.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "contact@wolf-kissendorf.de";
      author = "Christian Wolf";
      homepage = "https://bitbucket.org/bhris/libhbb";
      url = "";
      synopsis = "Backend for text editors to provide better Haskell editing support.";
      description = "This project contains a library that utilizes the GHC API\nto provide some special features for Haskell text editors.\nLibhbb has been designed to extend ghc-mod (which does\nsimilar tasks) with certain features. However libhbb is\ncompletely independent of ghc-mod. The connection to\nghc-mod is established in a package called hbb. The\nfeatures of libhbb can be used standalone by the means of\nthe executable libhbb-cli which is sipped as well.\nThe big outstanding feature that libhbb provides is the\nability to inline functions (their body is converted to a\nlambda function and written in place of the according\nname).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "libhbb-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libhbb" or (errorHandler.buildDepError "libhbb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."libhbb" or (errorHandler.buildDepError "libhbb"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }