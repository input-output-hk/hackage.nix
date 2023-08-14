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
      specVersion = "3.0";
      identifier = { name = "ret"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "ⓒ 2023 Anselm Schüler";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "https://github.com/schuelermine/ret";
      url = "";
      synopsis = "A tool that returns to a landmark parent directory";
      description = "A tool that outputs a parent directory with a landmark";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ret" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }