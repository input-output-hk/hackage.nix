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
      identifier = { name = "hgmp"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016,2017 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/hgmp";
      url = "";
      synopsis = "Haskell interface to GMP";
      description = "Types and instances, and marshalling between Integer and\nRational and the corresponding GMP types, along with raw\nforeign imports of GMP functions.  Allows FFI to GMP code\n(whether in GMP itself or in third-party code that uses\nGMP).\n\nSupports only GHC with integer-gmp or ghc-bignum, this\nmight change if there's any demand.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ] ++ (if compiler.isGhc && compiler.version.ge "8.11"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ]);
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgmp" or (errorHandler.buildDepError "hgmp"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }