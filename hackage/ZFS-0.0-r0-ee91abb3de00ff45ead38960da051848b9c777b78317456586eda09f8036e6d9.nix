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
      specVersion = "1.2";
      identifier = { name = "ZFS"; version = "0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Gwern Branwen <gwern0@gmail.com";
      author = "Amr Sabry, R. Kent Dybvig, Simon L. Peyton Jones, Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "Oleg's Zipper FS";
      description = "A implementation of a zipper filesystem using delimited continuations.\nZipper-based File/Operating system\nwith threading and exceptions all realized via delimited continuations.\nThere are no unsafe operations, no GHC (let alone) Unix threads,\nno concurrency problems. Our threads can't even do IO and can't\nmutate any global state -- and the type system sees to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."CC-delcont" or (buildDepError "CC-delcont"))
          ];
        };
      };
    }