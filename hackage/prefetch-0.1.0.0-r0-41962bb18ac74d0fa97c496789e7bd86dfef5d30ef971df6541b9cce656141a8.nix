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
      identifier = { name = "prefetch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem (2019)";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "Prefetch stdin even before stdout is ready";
      description = "Useful when piping a slow command into less as it\nprefetches the slow command's output into memory\neven before less was paged down to the end";
      buildType = "Simple";
    };
    components = {
      exes = {
        "prefetch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }