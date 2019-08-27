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
      specVersion = "1.14";
      identifier = { name = "barecheck"; version = "0.2.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014 Omari Norman";
      maintainer = "Omari Norman, omari@smileystation.com";
      author = "Omari Norman, omari@smileystation.com";
      homepage = "http://github.com/massysett/barecheck";
      url = "";
      synopsis = "QuickCheck implementations for common types";
      description = "Provides QuickCheck implementations for common types distributed\nwith GHC and in the Haskell Platform.  The implementations\nare NOT provided through the QuickCheck Arbitrary and\nCoArbitrary typeclasses; instead, they are provided through\nordinary, non-overloaded functions.  This avoids problems\nwith orphan instances.\n\nImplementations are provided through child modules of the\nmodule that provides the original type.  For example, for\n\"Data.Map\", look under \"Data.Map.Generators\",\n\"Data.Map.Shrinkers\", and \"Data.Map.Coarbitrary\".\nFor instance, a function that generates a Map is at\n'Data.Map.Generators.map', while a function providing\na coarbitrary implementation is at 'Data.Map.Coarbitrary.map'.\nObviously this can lead to name conflicts, both between\nmodules provided in this package and with other standard\nmodules, so keep this in mind when you do your imports.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      };
    }