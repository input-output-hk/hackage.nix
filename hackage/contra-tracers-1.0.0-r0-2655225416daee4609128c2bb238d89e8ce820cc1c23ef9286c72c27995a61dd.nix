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
      identifier = { name = "contra-tracers"; version = "1.0.0"; };
      license = "MPL-2.0";
      copyright = "2021 KtorZ";
      maintainer = "matthias.benkort@gmail.com";
      author = "KtorZ <matthias.benkort@gmail.com>";
      homepage = "https://github.com/cardanosolutions/ogmios#readme";
      url = "";
      synopsis = "A logging library built on top of contra-tracer to make configuring and declaring multiple tracers easy (via generics).";
      description = "Please see the README on GitHub at <https://github.com/cardanosolutions/ogmios/tree/master/server/modules/contra-tracers>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
          ];
        buildable = true;
        };
      };
    }