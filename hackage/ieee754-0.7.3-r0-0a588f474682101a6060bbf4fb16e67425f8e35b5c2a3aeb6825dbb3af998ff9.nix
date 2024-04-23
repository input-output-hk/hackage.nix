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
    flags = { big_endian = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ieee754"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011. Patrick Perry <patperry@gmail.com>";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/hs-ieee754";
      url = "";
      synopsis = "Utilities for dealing with IEEE floating point numbers";
      description = "Utilities for dealing with IEEE floating point numbers, ported\nfrom the Tango math library; approximate and exact equality\ncomparisons for general types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
        buildable = true;
      };
    };
  }