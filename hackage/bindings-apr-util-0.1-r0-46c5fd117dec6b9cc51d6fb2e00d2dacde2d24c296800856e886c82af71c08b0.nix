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
      identifier = { name = "bindings-apr-util"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-APR.html";
      url = "";
      synopsis = "Low level bindings to Apache Portable Runtime Utility (APR Utility)";
      description = "Bindings to APR Utility: <http://apr.apache.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bindings-apr" or (errorHandler.buildDepError "bindings-apr"))
        ];
        pkgconfig = [
          (pkgconfPkgs."apr-util-1" or (errorHandler.pkgConfDepError "apr-util-1"))
        ];
        buildable = true;
      };
    };
  }