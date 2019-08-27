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
      identifier = { name = "cabal2nix"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "This utility converts Cabal files into Nix build\ninstructions. The commandline syntax is:\n\n> cabal2nix cabal-file-uri [sha256-hash]\n\nThe first argument is the path to the cabal\nfile. That path can be an HTTP URL or local file\npath. For example:\n\n> cabal2nix http://hackage.haskell.org/packages/archive/cabal2nix/1.5/cabal2nix.cabal\n> cabal2nix file:///tmp/cabal2nix.cabal 0m7zgsd1pxmw504xpvl7dg25ana6dkk1mcyjj4c1wdbkvhvbn3gn\n> cabal2nix /tmp/cabal2nix.cabal 0m7zgsd1pxmw504xpvl7dg25ana6dkk1mcyjj4c1wdbkvhvbn3gn\n\nThe second argument -- the hash of the source\ntarball -- is optional. If it's not specified,\ncabal2nix calls @nix-prefetch-url@ to determine\nthe hash automatically. This causes network\ntraffic, obviously.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ];
          };
        };
      };
    }