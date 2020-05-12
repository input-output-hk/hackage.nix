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
      identifier = { name = "publicsuffixlistcreate"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/publicsuffixlist";
      url = "";
      synopsis = "Create the publicsuffixlist package";
      description = "Create the publicsuffixlist package. This is broken out into its own package so users of the publicsuffixlist package don't have to depend on ICU.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."idna" or (errorHandler.buildDepError "idna"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."publicsuffixlist" or (errorHandler.buildDepError "publicsuffixlist"))
          ];
        buildable = true;
        };
      };
    }