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
      specVersion = "1.6";
      identifier = { name = "hsc3-server"; version = "0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2011";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/software/hsc3-server";
      url = "";
      synopsis = "SuperCollider server resource management and synchronization.";
      description = "This library provides abstractions for managing SuperCollider server resources like node, buffer and bus ids and synchronization primitives.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."hsc3-process" or (errorHandler.buildDepError "hsc3-process"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }