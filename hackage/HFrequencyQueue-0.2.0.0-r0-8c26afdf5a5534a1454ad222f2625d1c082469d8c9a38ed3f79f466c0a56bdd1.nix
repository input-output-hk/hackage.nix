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
      identifier = { name = "HFrequencyQueue"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bellaz89@gmail.com";
      author = "Andrea Bellandi";
      homepage = "https://github.com/Bellaz/HfrequencyList";
      url = "";
      synopsis = "A Queue with a random (weighted) pick function";
      description = "This package provide a queue that use an internal random generator\nto return a random element. The probability that a certain element\ncome out is controlled by an Int that is the relative probability\nof that element. IT USE GCC WITH C++11!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }