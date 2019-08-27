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
    flags = { ghc_6_10 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uniplate"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "2006-10, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://community.haskell.org/~ndm/uniplate/";
      url = "";
      synopsis = "Help writing simple, concise and fast generic operations.";
      description = "Uniplate is library for writing simple and concise generic operations.\nUniplate has similar goals to the original Scrap Your Boilerplate work,\nbut is substantially simpler and faster.\n\nTo get started with Uniplate you should import one of the three following\nmodules:\n\n* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.\nMost users should start by importing this module.\n\n* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"\nwith substantially higher performance (around 5 times), but requires writing\ninstance declarations.\n\n* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined\nby Uniplate. Both the above two modules re-export this module.\n\nIn addition, some users may want to make use of the following modules:\n\n* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.\n\n* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.\n\n* \"Data.Generics.Compos\" - users transitioning from the Compos library.\n\n* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @Data@ and @Direct@\nto avoid getting instance conflicts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.ghc_6_10
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
        };
      };
    }