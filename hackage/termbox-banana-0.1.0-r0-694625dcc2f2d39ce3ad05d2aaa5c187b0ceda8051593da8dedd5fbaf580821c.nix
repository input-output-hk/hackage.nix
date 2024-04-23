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
      specVersion = "2.0";
      identifier = { name = "termbox-banana"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/termbox-banana";
      url = "";
      synopsis = "reactive-banana + termbox";
      description = "A @reactive-banana@-based interface to writing @termbox@ programs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."termbox" or (errorHandler.buildDepError "termbox"))
        ];
        buildable = true;
      };
    };
  }