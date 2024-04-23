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
    flags = { exe = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "base-compat-migrate"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark";
      homepage = "https://github.com/bergmark/base-compat-migrate#readme";
      url = "";
      synopsis = "Helps migrating projects to base-compat(-batteries).";
      description = "Temporarily replace your base & base-compat(-batteries) dependencies with base-compat-migrate to verify that you are using all available base-compat modules.\nPlease see the included README or visit <https://github.com/bergmark/base-compat-migrate#readme> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
        ];
        buildable = true;
      };
      exes = {
        "base-compat-migrate-generate" = {
          depends = pkgs.lib.optionals (flags.exe) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          ];
          buildable = if flags.exe then true else false;
        };
      };
    };
  }