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
      identifier = { name = "udp-conduit"; version = "0.1.0.4"; };
      license = "ISC";
      copyright = "(c) 2016 kqr";
      maintainer = "k@rdw.se";
      author = "kqr";
      homepage = "https://github.com/kqr/udp-conduit#readme";
      url = "";
      synopsis = "Simple fire-and-forget conduit UDP wrappers";
      description = "`udp-conduit` provides simple wrappers to get fire-and-forget UDP sinks\nand sources.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."chunked-data" or (errorHandler.buildDepError "chunked-data"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."conduit-combinators" or (errorHandler.buildDepError "conduit-combinators"))
          ];
        buildable = true;
        };
      };
    }