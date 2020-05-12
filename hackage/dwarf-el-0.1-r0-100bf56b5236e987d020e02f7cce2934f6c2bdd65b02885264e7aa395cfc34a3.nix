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
      specVersion = "1.6";
      identifier = { name = "dwarf-el"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem, Erik Charlebois";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "Parser for DWARF debug format.";
      description = "Parser for DWARF debug format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }