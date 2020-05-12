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
      specVersion = "1.2";
      identifier = { name = "hjs"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Mark Wassell 2007";
      maintainer = "Mark Wassell <mwassell@bigpond.net.au>";
      author = "Mark Wassell";
      homepage = "http://www.haskell.org/haskellwiki/Libraries_and_tools/HJS";
      url = "";
      synopsis = "JavaScript Parser";
      description = "A Javascript parser and interpreter.\nWorks as per ECMA-262 plus some parts of JS >=1.5.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = { "hjs" = { buildable = true; }; };
      };
    }