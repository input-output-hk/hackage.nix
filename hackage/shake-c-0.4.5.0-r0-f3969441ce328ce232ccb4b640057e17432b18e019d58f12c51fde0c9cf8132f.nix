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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "shake-c"; version = "0.4.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Library for building C code with shake";
      description = "Facilities for building C libraries and binaries, and depending on C source files. Extends [shake](http://hackage.haskell.org/package/shake).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."cdeps" or (errorHandler.buildDepError "cdeps"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
        ];
        buildable = true;
      };
    };
  }