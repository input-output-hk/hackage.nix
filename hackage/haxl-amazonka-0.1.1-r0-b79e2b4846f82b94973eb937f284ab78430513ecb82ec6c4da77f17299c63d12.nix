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
      identifier = { name = "haxl-amazonka"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tvh@tvholtz.de";
      author = "Timo von Holtz";
      homepage = "http://github.com/tvh/haxl-amazonka#readme";
      url = "";
      synopsis = "Haxl data source for accessing AWS services through amazonka.";
      description = "Haxl data source for accessing AWS services through amazonka.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haxl" or (errorHandler.buildDepError "haxl"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
        buildable = true;
        };
      };
    }