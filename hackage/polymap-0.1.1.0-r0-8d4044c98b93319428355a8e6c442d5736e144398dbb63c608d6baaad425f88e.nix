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
      identifier = { name = "polymap"; version = "0.1.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Copyright (C) 2015 David Farrell";
      maintainer = "David Farrell <shokku.ra@gmail.com>";
      author = "David Farrell";
      homepage = "";
      url = "";
      synopsis = "Polygonal maps";
      description = "Polygonal maps for Haskell with flexible storage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "example-basic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polymap" or (errorHandler.buildDepError "polymap"))
          ];
          buildable = true;
        };
      };
    };
  }