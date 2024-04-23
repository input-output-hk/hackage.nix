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
      specVersion = "1.6";
      identifier = { name = "xorshift"; version = "2"; };
      license = "LicenseRef-LGPL";
      copyright = "©2010 Robert Clausecker";
      maintainer = "Robert Clausecker";
      author = "Robert Clausecker  <fuzxxl@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of the xorshift random generator.";
      description = "The Xorshift random generator is a very fast generator that uses\nonly XOR and bitshifting operations. This package contains a basic version\nwith a periode of 2^32-1 for 32-bit numbers and a version with a periode of\n2^64-1 for 64-bit numbers.\n\nAlthough the author didn't tested the random generator,\nbut according to it's specification the resulting numbers are of good\nquality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }