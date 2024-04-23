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
      specVersion = "1.10";
      identifier = { name = "rfc1413-server"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Kevin Cotrone";
      maintainer = "kevincotrone@gmail.com";
      author = "Kevin Cotrone";
      homepage = "https://github.com/cotrone/rfc1413-server#readme";
      url = "";
      synopsis = "rfc1413 server";
      description = "Haskell implementation of a user space rfc1413 server";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."rfc1413-types" or (errorHandler.buildDepError "rfc1413-types"))
        ];
        buildable = true;
      };
    };
  }