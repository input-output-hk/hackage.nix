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
      identifier = { name = "dyre"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2023 Will Donnelly, Fraser Tweedale";
      maintainer = "Fraser Tweedale <frase@frase.id.au>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/dyre";
      url = "";
      synopsis = "Dynamic reconfiguration in Haskell";
      description = "Dyre implements dynamic reconfiguration facilities after the\nstyle of Xmonad. Dyre aims to be as simple as possible without\nsacrificing features, and places an emphasis on simplicity of\nintegration with an application.\nA full introduction with a complete example project can be found\nin the documentation for 'Config.Dyre'";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          ];
          buildable = true;
        };
      };
    };
  }