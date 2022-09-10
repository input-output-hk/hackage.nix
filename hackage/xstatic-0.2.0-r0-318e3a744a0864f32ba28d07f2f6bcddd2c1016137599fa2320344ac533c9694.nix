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
      specVersion = "1.12";
      identifier = { name = "xstatic"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan Cacqueray";
      homepage = "https://github.com/TristanCacqueray/haskell-xstatic#readme";
      url = "";
      synopsis = "Low-Fat static file packaging for Haskell projects";
      description = "Low-Fat static file packaging for Haskell projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }