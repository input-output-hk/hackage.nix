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
      identifier = { name = "universe-instances-trans"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for types from the transformers and mtl packages";
      description = "__DEPRECATED:__ instances are moved to @universe-base@ package\n\n@universe-base@ package provides instances for types from GHC-boot libraries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
        ];
        buildable = true;
      };
    };
  }