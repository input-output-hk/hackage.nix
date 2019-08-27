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
      identifier = { name = "pez"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Brandon Simmons, 2011";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://brandon.si/code/pez-zipper-library-released/";
      url = "";
      synopsis = "A Pretty Extraordinary Zipper library";
      description = "PEZ is a generic zipper library. It uses lenses from the \"fclabels\" package to\nreference a \\\"location\\\" to move to in the zipper. The zipper is restricted to\ntypes in the 'Typeable' class, allowing the user to \\\"move up\\\" through complex data\nstructures such as mutually-recursive types.\n\nBoth the Typeable class and fclabels lenses can be derived in GHC, making it\neasy for the programmer to use a zipper with a minimum of boilerplate.\n\nPlease send any feature requests or bug reports along.\n\nChanges 0.0.4 -> 0.1.0:\n\n>  - use fclabels 1.0\n>  - module renamed Data.Label.Zipper\n>  - 'ZPath' renamed 'Motion', define new Up type and instance\n>  - fclabels lenses now require wrapping with 'to'\n>  - 'moveTo' changed to 'move'\n>  - savedLens renamed flatten\n>  - SavedPath renamed To\n>  - removed experimental operators\n>  - using failure package for exceptions\n>  - etc., etc.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."thrist" or (buildDepError "thrist"))
          (hsPkgs."failure" or (buildDepError "failure"))
          ];
        };
      tests = {
        "zipper-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }