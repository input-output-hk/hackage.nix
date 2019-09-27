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
      identifier = { name = "unittyped"; version = "0.1"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright: (c) 2012 Thijs Alkemade";
      maintainer = "Thijs Alkemade <thijsalkemade@gmail.com>";
      author = "Thijs Alkemade <thijsalkemade@gmail.com>";
      homepage = "https://bitbucket.org/xnyhps/haskell-unittyped/";
      url = "";
      synopsis = "An extendable library for type-safe computations including units.";
      description = "UnitTyped is a Haskell library that makes it possible to do computations on values with a dimension and a unit. The typechecker ensures that all operations are using the proper dimensions, and all units can be converted to compatible units automatically. New dimensions and units can be defined from other modules, requiring just a data type and one class instance to work with everything else. The library comes with all SI dimensions and units, and many units derived from those.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test-si" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unittyped" or (buildDepError "unittyped"))
            ];
          buildable = true;
          };
        };
      };
    }