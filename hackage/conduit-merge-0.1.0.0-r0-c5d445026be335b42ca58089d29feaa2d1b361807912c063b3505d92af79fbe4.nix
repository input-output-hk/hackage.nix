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
      identifier = { name = "conduit-merge"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Yuriy Syrovetskiy";
      maintainer = "cblp@cblp.su";
      author = "Yuriy Syrovetskiy";
      homepage = "https://github.com/cblp/conduit-merge#readme";
      url = "";
      synopsis = "Merge multiple sorted conduits";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }