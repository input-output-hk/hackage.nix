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
      identifier = { name = "regular"; version = "0.3.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht, 2012 University of Oxford";
      maintainer = "generics@haskell.org";
      author = "Jose Pedro Magalhaes";
      homepage = "";
      url = "";
      synopsis = "Generic programming library for regular datatypes.";
      description = "This package provides generic functionality for regular datatypes.\nRegular datatypes are recursive datatypes such as lists, binary trees,\netc. This library cannot be used with mutually recursive datatypes or\nwith nested datatypes. The multirec library [1] can deal with mutually\nrecursive datatypes.\n\nThis library has been described in the paper:\n\n*  /A Lightweight Approach to Datatype-Generic Rewriting./\nThomas van Noort, Alexey Rodriguez, Stefan Holdermans, Johan Jeuring, Bastiaan Heeren.\nACM SIGPLAN Workshop on Generic Programming 2008.\n\nMore information about this library can be found at\n<http://www.cs.uu.nl/wiki/GenericProgramming/Regular>.\n\n\\[1] <http://hackage.haskell.org/package/multirec>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ] ++ [
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }