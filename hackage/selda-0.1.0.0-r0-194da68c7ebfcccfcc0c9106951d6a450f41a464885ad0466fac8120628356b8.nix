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
    flags = { localcache = true; haste = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "selda"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/selda";
      url = "";
      synopsis = "Type-safe, high-level EDSL for interacting with relational databases.";
      description = "This package provides an EDSL for writing portable, type-safe, high-level\ndatabase code. Its feature set includes querying and modifying databases,\nautomatic, in-process caching with consistency guarantees, and transaction\nsupport.\nSee the package readme for a brief usage tutorial.\nTo use this package you need at least one backend package, in addition to\nthis package. There are currently two different backend packages:\nselda-sqlite and selda-postgresql.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.11") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optionals (!flags.haste && flags.localcache) [
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }