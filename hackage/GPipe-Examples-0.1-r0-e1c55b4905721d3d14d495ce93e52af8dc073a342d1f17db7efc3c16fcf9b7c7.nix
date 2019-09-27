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
      specVersion = "1.6";
      identifier = { name = "GPipe-Examples"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Kree Cole-McLaughlin";
      maintainer = "kree.colemclaughlin@gmail.com";
      author = "Kree Cole-McLaughlin";
      homepage = "";
      url = "";
      synopsis = "Examples for the GPipes package";
      description = "A set of examples with increasing complexity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "01_green_triangle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "02_triangle_texture" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "03_green_sphere" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "04_brass_sphere" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (buildDepError "GLUT"))
            ];
          buildable = true;
          };
        };
      };
    }