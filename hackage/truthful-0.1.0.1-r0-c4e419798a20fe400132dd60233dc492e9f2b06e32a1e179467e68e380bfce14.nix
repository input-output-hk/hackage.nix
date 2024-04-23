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
      identifier = { name = "truthful"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Copyright (C) 2015 David Farrell";
      maintainer = "David Farrell <shokku.ra@gmail.com>";
      author = "David Farrell";
      homepage = "";
      url = "";
      synopsis = "Typeclass for truthfulness of values";
      description = "Typeclass for truthfulness or completeness of types such as Bool, Maybe, and Either. Similar to `null` from `Foldable` but for all kinds `*`.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }