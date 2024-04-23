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
      specVersion = "1.4";
      identifier = { name = "conductive-clock"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-clock";
      url = "";
      synopsis = "a library for displaying musical time in a terminal-based clock";
      description = "This library is for generating strings containing clock time, sending them across OSC, and displaying them in a terminal. In addition to the library functions, it contains a sample executable for displaying musical time in a terminal-based clock.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conductive-base" or (errorHandler.buildDepError "conductive-base"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
        ];
        buildable = true;
      };
    };
  }