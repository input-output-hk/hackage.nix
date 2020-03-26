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
      specVersion = "2.2";
      identifier = { name = "bin"; version = "0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Bin: binary natural numbers.";
      description = "This package provides /binary natural numbers/ (\"Data.Bin\");\nalso utilities to work on the type level with @DataKinds@ (\"Data.Type.Bin\").\n\n@\ndata Bin\n\\    = BZ       -- ^ zero\n\\    | BP BinP  -- ^ non-zero\n\ndata BinP\n\\    = BE       -- ^ one\n\\    | B0 BinP  -- ^ double\n\\    | B1 BinP  -- ^ double plus 1\n@\n\nThere are /ordinals/ in \"Data.Bin.Pos\" module, as well as\nfixed width integers in \"Data.Wrd\".\n\nAnother implementation is at <https://hackage.haskell.org/package/nat>,\nthis differs in naming, and provides promoted variant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."dec" or (buildDepError "dec"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."fin" or (buildDepError "fin"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (buildDepError "nats"));
        buildable = true;
        };
      };
    }