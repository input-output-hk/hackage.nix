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
      specVersion = "1.8";
      identifier = { name = "camfort"; version = "0.802"; };
      license = "Apache-2.0";
      copyright = "2012-2016 University of Cambridge";
      maintainer = "dom.orchard@gmail.com";
      author = "Dominic Orchard, Matthew Danish, Mistral Contrastin, Andrew Rice, Oleg Oshmyan";
      homepage = "";
      url = "";
      synopsis = "CamFort - Cambridge Fortran infrastructure";
      description = "CamFort is a tool for the analysis, transformation, verification of Fortran code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."syz" or (buildDepError "syz"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."language-fortran" or (buildDepError "language-fortran"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
          (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          ];
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
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."syz" or (buildDepError "syz"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."matrix" or (buildDepError "matrix"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."language-fortran" or (buildDepError "language-fortran"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "analyse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."fortran-src" or (buildDepError "fortran-src"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."camfort" or (buildDepError "camfort"))
            ];
          buildable = true;
          };
        };
      };
    }