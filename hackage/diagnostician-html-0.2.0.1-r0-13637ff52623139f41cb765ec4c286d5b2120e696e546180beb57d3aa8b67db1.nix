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
      identifier = { name = "diagnostician-html"; version = "0.2.0.1"; };
      license = "(Apache-2.0 OR MIT)";
      copyright = "";
      maintainer = "root@owenlynch.org";
      author = "Coln contributors";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Lucid HTML rendering backend for Diagnostician";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagnostician" or (errorHandler.buildDepError "diagnostician"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-lucid" or (errorHandler.buildDepError "prettyprinter-lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }