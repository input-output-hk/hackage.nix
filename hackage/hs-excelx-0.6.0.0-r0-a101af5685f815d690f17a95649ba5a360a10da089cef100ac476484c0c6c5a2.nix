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
      identifier = { name = "hs-excelx"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mebaran@gmail.com";
      author = "Mark Baran";
      homepage = "";
      url = "";
      synopsis = "HS-Excelx provides basic read-only access to Excel 2007 and 2010 documents in XLSX format.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      };
    }