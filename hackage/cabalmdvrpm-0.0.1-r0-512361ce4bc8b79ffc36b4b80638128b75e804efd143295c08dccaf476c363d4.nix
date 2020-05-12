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
      specVersion = "0";
      identifier = { name = "cabalmdvrpm"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2006-2007 Olivier Thauvin";
      maintainer = "Olivier Thauvin <nanardon@nanardon.zarb.org>";
      author = "";
      homepage = "http://nanardon.zarb.org/darcsweb/darcsweb.cgi?r=haskell-cabalmdvrpm;a=shortlog;topi=0";
      url = "";
      synopsis = "Create mandriva rpm from cabal package";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."cabalrpmdeps" or (errorHandler.buildDepError "cabalrpmdeps"))
          ];
        buildable = true;
        };
      exes = {
        "cabalmdvspec" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabalrpmdeps" or (errorHandler.buildDepError "cabalrpmdeps"))
            ];
          buildable = true;
          };
        };
      };
    }