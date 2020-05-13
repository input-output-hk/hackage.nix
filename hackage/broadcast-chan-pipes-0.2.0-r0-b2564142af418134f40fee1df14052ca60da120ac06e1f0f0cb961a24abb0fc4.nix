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
      identifier = { name = "broadcast-chan-pipes"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Pipes-based parallel streaming code for broadcast-chan";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
        buildable = true;
        };
      tests = {
        "pipes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan-pipes" or (errorHandler.buildDepError "broadcast-chan-pipes"))
            (hsPkgs."broadcast-chan-tests" or (errorHandler.buildDepError "broadcast-chan-tests"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            ];
          buildable = true;
          };
        };
      };
    }