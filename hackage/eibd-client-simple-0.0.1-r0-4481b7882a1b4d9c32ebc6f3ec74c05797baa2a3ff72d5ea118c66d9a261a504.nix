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
      identifier = { name = "eibd-client-simple"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) Ole Krüger, 2014";
      maintainer = "ole.krueger@campus.tu-berlin.de";
      author = "Ole Krüger";
      homepage = "";
      url = "";
      synopsis = "EIBd Client";
      description = "Simple EIBd Client";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [ (pkgs."eibclient" or (errorHandler.sysDepError "eibclient")) ];
        buildable = true;
      };
    };
  }