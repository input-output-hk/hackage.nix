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
      specVersion = "2.2";
      identifier = { name = "parsley-core"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jamie Willis <j.willis19@imperial.ac.uk>";
      author = "Jamie Willis, Parsley Contributors";
      homepage = "https://github.com/j-mie6/ParsleyHaskell/tree/master/parsley-core";
      url = "";
      synopsis = "A fast parser combinator library backed by Typed Template Haskell";
      description = "This package contains the internals of the @parsley@ package.\n\nWhile this library adheres to the Haskell PVP, it additionally\nenforces an additional constraint: the version @M.I.m.p@ represents\na breaking change to the /public/ API @M@, a breaking change\nto the /internal/ API @I@ (which will not affect parsley), an addition\nto either API @m@, and patches or performance improvements @p@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dependent-map" or (errorHandler.buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
        buildable = true;
        };
      };
    }