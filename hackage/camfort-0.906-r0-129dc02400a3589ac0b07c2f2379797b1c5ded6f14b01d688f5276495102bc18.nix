let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "camfort"; version = "0.906"; };
      license = "Apache-2.0";
      copyright = "2012-2019 University of Cambridge";
      maintainer = "Matthew Danish";
      author = "Matthew Danish, Mistral Contrastin, Andrew Rice, Dominic Orchard";
      homepage = "https://camfort.github.io";
      url = "";
      synopsis = "CamFort - Cambridge Fortran infrastructure";
      description = "CamFort is a tool for the analysis, transformation, verification of Fortran code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."lattices" or (buildDepError "lattices"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."sbv" or (buildDepError "sbv"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."syz" or (buildDepError "syz"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."verifiable-expressions" or (buildDepError "verifiable-expressions"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."writer-cps-morph" or (buildDepError "writer-cps-morph"))
          (hsPkgs."writer-cps-mtl" or (buildDepError "writer-cps-mtl"))
          (hsPkgs."writer-cps-transformers" or (buildDepError "writer-cps-transformers"))
          ];
        libs = [ (pkgs."flint" or (sysDepError "flint")) ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "camfort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."camfort" or (buildDepError "camfort"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."camfort" or (buildDepError "camfort"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."lattices" or (buildDepError "lattices"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."sbv" or (buildDepError "sbv"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."verifiable-expressions" or (buildDepError "verifiable-expressions"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }