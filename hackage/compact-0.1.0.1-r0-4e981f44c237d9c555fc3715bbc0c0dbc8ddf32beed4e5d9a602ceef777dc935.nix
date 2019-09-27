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
      identifier = { name = "compact"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Edward Z. Yang, Ben Gamari";
      maintainer = "ezyang@mit.edu, ben@smart-cactus.org";
      author = "Edward Z. Yang, Ben Gamari";
      homepage = "https://github.com/ezyang/compact";
      url = "";
      synopsis = "Non-GC'd, contiguous storage for immutable data structures";
      description = "This package provides user-facing APIs for working with\n\"compact regions\", which hold a fully evaluated Haskell object graph.\nThese regions maintain the invariant that no pointers live inside the struct\nthat point outside it, which ensures efficient garbage collection without\never reading the structure contents (effectively, it works as a manually\nmanaged \"oldest generation\" which is never freed until the whole is\nreleased).\nThis package is currently highly experimental, but we hope it may\nbe useful to some people.  It is GHC 8.2 only.  The bare-bones library\nthat ships with GHC is ghc-compact.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-compact" or (buildDepError "ghc-compact"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "compact-test" = {
          depends = [
            (hsPkgs."compact" or (buildDepError "compact"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }