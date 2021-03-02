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
      identifier = { name = "tagged-th"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter and Template Haskell splices for creating proxies at higher-kinds";
      description = "QuasiQuoter and Template Haskell splices for creating proxies at\nhigher-kinds (via @type-spine@'s @k -> *@ kind wrappers)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."type-spine" or (errorHandler.buildDepError "type-spine"))
          ];
        buildable = true;
        };
      };
    }