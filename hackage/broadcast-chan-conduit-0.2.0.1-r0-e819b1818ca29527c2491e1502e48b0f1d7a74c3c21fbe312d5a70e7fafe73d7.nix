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
      identifier = { name = "broadcast-chan-conduit"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2018 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/broadcast-chan";
      url = "";
      synopsis = "Conduit-based parallel streaming code for broadcast-chan";
      description = "__WARNING:__ While the code in this library should be fairly stable and\nproduction, the API is something I'm still working on. API changes will\nfollow the PVP, but __expect__ breaking API changes in future versions!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."broadcast-chan" or (errorHandler.buildDepError "broadcast-chan"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."void" or (errorHandler.buildDepError "void"));
        buildable = true;
        };
      tests = {
        "conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broadcast-chan-conduit" or (errorHandler.buildDepError "broadcast-chan-conduit"))
            (hsPkgs."broadcast-chan-tests" or (errorHandler.buildDepError "broadcast-chan-tests"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            ];
          buildable = true;
          };
        };
      };
    }