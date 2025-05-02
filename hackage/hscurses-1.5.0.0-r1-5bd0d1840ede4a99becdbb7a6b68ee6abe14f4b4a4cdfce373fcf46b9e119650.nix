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
    flags = { examples = false; debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hscurses"; version = "1.5.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Stefan Wehr 2004 - 2011\nDon Stewart 2004\nTuomo Valkonen 2004\nJohn Meacham 2002-2004";
      maintainer = "Stefan Wehr <http://www.stefanwehr.de>";
      author = "John Meacham <john at repetae dot net>\nTuomo Valkonen <tuomov at iki.fi>\nDon Stewart <http://www.cse.unsw.edu.au/~dons>\nStefan Wehr <http://www.stefanwehr.de>";
      homepage = "https://github.com/skogsbaer/hscurses";
      url = "";
      synopsis = "NCurses bindings for Haskell";
      description = "Binding to NCurses, a library of functions that manage an\napplication's display on character-cell terminals. Additionally,\nit contains some basic widgets such as a text input widget and\na table widget.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        libs = [ (pkgs."ncurses" or (errorHandler.sysDepError "ncurses")) ];
        buildable = true;
      };
      exes = {
        "contact-manager" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
          buildable = if flags.examples then true else false;
        };
        "key-test" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
          ];
          buildable = if flags.examples then true else false;
        };
        "widget-test-text" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
          ];
          buildable = if flags.examples then true else false;
        };
        "widget-test-table" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
          ];
          buildable = if flags.examples then true else false;
        };
        "widget-test-edit" = {
          depends = pkgs.lib.optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }