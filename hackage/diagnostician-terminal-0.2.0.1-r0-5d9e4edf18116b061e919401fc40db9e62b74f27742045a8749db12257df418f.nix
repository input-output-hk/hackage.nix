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
      specVersion = "3.4";
      identifier = { name = "diagnostician-terminal"; version = "0.2.0.1"; };
      license = "(Apache-2.0 OR MIT)";
      copyright = "";
      maintainer = "root@owenlynch.org";
      author = "Coln contributors";
      homepage = "";
      url = "";
      synopsis = "";
      description = "ANSI terminal rendering backend for Diagnostician";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagnostician" or (errorHandler.buildDepError "diagnostician"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }