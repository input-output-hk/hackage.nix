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
    flags = { test-properties = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-supply"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/concurrent-supply/";
      url = "";
      synopsis = "A fast concurrent unique identifier supply with a pure API";
      description = "A fast supply of concurrent unique identifiers suitable for use\nwithin a single process. Once the initial 'Supply' has been initialized,\nthe remainder of the API is pure. See \"Control.Concurrent.Supply\" for\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-supply" or (errorHandler.buildDepError "concurrent-supply"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if !flags.test-properties then false else true;
          };
        };
      };
    }