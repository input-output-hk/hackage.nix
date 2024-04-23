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
      identifier = { name = "hmenu"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sulami@peerwire.org";
      author = "Robin Schroer";
      homepage = "";
      url = "";
      synopsis = "CLI fuzzy finder and launcher";
      description = "hmenu is a program launcher for the terminal inspired by\ndmenu. Contrary to dmenu, it uses fuzzy filtering to find\nthe program you are looking for.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hmenu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
          buildable = true;
        };
      };
    };
  }