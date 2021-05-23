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
      identifier = { name = "parsley"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jamie Willis <j.willis19@imperial.ac.uk>";
      author = "Jamie Willis";
      homepage = "https://github.com/j-mie6/ParsleyHaskell";
      url = "";
      synopsis = "A fast parser combinator library backed by Typed Template Haskell";
      description = "Parsley is a staged selective parser combinator library, which means\nit does not support monadic operations, and relies on Typed Template\nHaskell to generate very fast code. Currently there are no error messages\nbut there are plans for this in the works.\n\nBased on the work found in [/Staged Selective Parser Combinators/\n(Willis et al. 2020)](https://dl.acm.org/doi/10.1145/3409002)\n\nWhile this library adheres to the Haskell PVP, it additionally\nenforces an additional constraint: the version @M.I.m.p@ represents\na breaking change to the /user/ API @M@, a breaking change\nto the /internal/ API @I@ (which will not affect most users), an addition\nto either API @m@, and patches or performance improvements @p@.\nAs such, users should feel free to bound themselves on the next @M@\nversion of the library as opposed to the second @I@ version if they\ndo not make use of the \"Parsley.Internal\" package or any of its children.";
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