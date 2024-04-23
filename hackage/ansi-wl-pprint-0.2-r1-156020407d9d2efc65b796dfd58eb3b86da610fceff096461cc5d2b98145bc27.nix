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
    flags = { splitbase = true; example = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ansi-wl-pprint"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Daan Leijen and Max Bolingbroke";
      homepage = "http://bsp.lighthouseapp.com/projects/16293-hs-ansi-wl-pprint/overview";
      url = "";
      synopsis = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
      description = "This is a pretty printing library based on Wadler's paper \"A Prettier Printer\". It has been enhanced with support for ANSI terminal colored output using the ansi-terminal package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "ansi-wl-pprint-example" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if !flags.example then false else true;
        };
      };
    };
  }