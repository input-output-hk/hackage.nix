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
      specVersion = "1.18";
      identifier = { name = "Flint2"; version = "0.1.0.5"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 2023 Hartmut Monien";
      maintainer = "hmonien@uni-bonn.de";
      author = "Hartmut Monien";
      homepage = "https://github.com/monien/Flint2#readme";
      url = "";
      synopsis = "Haskell bindings for the flint library for number theory";
      description = "This library provides access to the functionality of the FLINT.\nFLINT is a C library for doing number theory, freely available under the GNU LGPL.\nAt its core, FLINT provides arithmetic in standard rings such as the integers, rationals, algebraic, real, complex and p-adic numbers, finite fields, and number fields. It also provides polynomials (univariate and multivariate), power series, and matrices.\nFLINT has been used for many large scale research computations (e.g. A Trillion Triangles) and has been cited in hundreds of publications. FLINT's authors themselves have published more than 20 papers describing new algorithms first implemented within or on top of FLINT.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
        ];
        libs = [ (pkgs."flint" or (errorHandler.sysDepError "flint")) ];
        pkgconfig = [
          (pkgconfPkgs."flint" or (errorHandler.pkgConfDepError "flint"))
          (pkgconfPkgs."gmp" or (errorHandler.pkgConfDepError "gmp"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "Flint2-test" = {
          depends = [
            (hsPkgs."Flint2" or (errorHandler.buildDepError "Flint2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }