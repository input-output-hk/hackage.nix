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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "polar-configfile"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2004-2014 John Goerzen, 2015 David Farrell";
      maintainer = "David Farrell <shokku.ra@gmail.com>";
      author = "John Goerzen (2004-2014), David Farrell";
      homepage = "";
      url = "";
      synopsis = "Fork of ConfigFile for Polar Game Engine";
      description = "A fork of ConfigFile updated and reworked to export a more consistent API for the Polar Game Engine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
        ];
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
          ];
          buildable = if flags.buildtests then true else false;
        };
      };
    };
  }