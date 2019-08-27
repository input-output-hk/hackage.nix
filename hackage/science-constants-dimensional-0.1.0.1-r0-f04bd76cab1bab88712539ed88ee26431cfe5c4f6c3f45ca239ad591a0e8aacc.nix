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
      specVersion = "1.10";
      identifier = {
        name = "science-constants-dimensional";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Vorontsov <anton@enomsg.org>";
      author = "Anton Vorontsov <anton@enomsg.org>";
      homepage = "";
      url = "";
      synopsis = "Mathematical/physical/chemical constants";
      description = "\"Science.Constants.Dimensional\" is a variant of \"Science.Constants\"[1]\npackage, with the only difference is that that the dimensional flavor\nprovides (where applicable) dimensionally-typed constants. The\n\"Numeric.Units.Dimensional\"[2] wrappers allow to write type-safe\nformulas, for example all of this will successfully type-check:\n\n> ~\$ ghci -XNoImplicitPrelude\n> λ= import Numeric.Units.Dimensional.Prelude\n>\n> λ= import Science.Constants.Dimensional\n>\n> λ= massOfProton + massOfElectron\n>\n> 1.673532715291e-27 kg\n> λ= massOfProton / massOfElectron\n>\n> 1836.1526719486646\n\nBut this will not:\n\n> λ= massOfProton / massOfElectron + planckConstant\n>\n> <interactive>:10:14:\n>     Couldn't match type `Numeric.NumType.Pos\n>                            (Numeric.NumType.Pos Numeric.NumType.Zero)'\n>                   with `Numeric.NumType.Zero'\n\n[1] <https://hackage.haskell.org/package/science-constants>\n\n[2] <https://hackage.haskell.org/package/dimensional>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."science-constants" or (buildDepError "science-constants"))
          (hsPkgs."numtype" or (buildDepError "numtype"))
          (hsPkgs."dimensional" or (buildDepError "dimensional"))
          ];
        };
      };
    }