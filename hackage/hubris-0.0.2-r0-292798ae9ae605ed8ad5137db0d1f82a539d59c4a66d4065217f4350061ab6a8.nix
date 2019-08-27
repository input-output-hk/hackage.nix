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
      identifier = { name = "hubris"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Support library for Hubris, the Ruby <=> Haskell bridge";
      description = "Support library for Hubris, the Ruby to Haskell bridge\nmore info at <http://github.com/mwotton/Hubris-Haskell>\n\nshort version: ./Setup configure --enable-shared --ghc-options=-dynamic --extra-include-dirs=... --extra-lib-dirs=...\n\nIf you omit any of those flags, it will seem to work then blow up at runtime.\n\nAnyway, this version strips the boilerplate that used to be necessary, and is intended to be used in conjunction with <http://github.com/mwotton/Hubris>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."hint" or (buildDepError "hint"))
          ];
        libs = [ (pkgs."ruby" or (sysDepError "ruby")) ];
        };
      exes = {
        "Hubrify" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          libs = [ (pkgs."ruby" or (sysDepError "ruby")) ];
          };
        };
      };
    }