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
      specVersion = "1.8";
      identifier = { name = "tpdb"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "";
      url = "";
      synopsis = "Data Type for Rewriting Systems";
      description = "The package defines data types and parsers for rewriting systems,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "XML" = { buildable = true; };
        "TRS" = { buildable = true; };
        "SRS" = { buildable = true; };
        };
      };
    }