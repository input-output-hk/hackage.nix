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
      identifier = { name = "hscd"; version = "0.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Sebastián Ramírez Magrí";
      maintainer = "Sebastián Ramírez Magrí <sebasmagri@gmail.com>";
      author = "Sebastián Ramírez Magrí";
      homepage = "https://bitbucket.org/sebasmagri/hscd";
      url = "";
      synopsis = "Command line client and library for SoundCloud.com";
      description = "A command line client and library to access SoundCloud.com.\n\nSupports fetching tracks and getting information about tracks,\nusers, sets, groups and SoundCloud apps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ];
        buildable = true;
        };
      exes = {
        "hscd" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }