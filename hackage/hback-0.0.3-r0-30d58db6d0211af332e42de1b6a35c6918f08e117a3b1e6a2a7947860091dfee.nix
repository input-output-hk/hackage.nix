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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hback"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      homepage = "http://hback.googlecode.com/";
      url = "";
      synopsis = "N-back memory game";
      description = "N-back memory game using gtk2hs.\n\nInstructions on installation and gameplay available at:\n<http://hback.googlecode.com/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hback" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }