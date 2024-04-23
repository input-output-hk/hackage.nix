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
    flags = { gui = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "gt-tools"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "Mikhail S. Pobolovets 2009-2010";
      maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
      author = "Mikhail S. Pobolovets";
      homepage = "http://github.com/styx/gtc";
      url = "git://github.com/styx/gtc.git";
      synopsis = "Console and GUI interface for Google Translate service";
      description = "This package consist from console backend, GUI backend and Core module\nfor Google Translate service. It allows you to translate words and sentences\nbetween different languages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gtc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
        "gtg" = {
          depends = pkgs.lib.optionals (flags.gui) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."url" or (errorHandler.buildDepError "url"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = if flags.gui then true else false;
        };
      };
    };
  }