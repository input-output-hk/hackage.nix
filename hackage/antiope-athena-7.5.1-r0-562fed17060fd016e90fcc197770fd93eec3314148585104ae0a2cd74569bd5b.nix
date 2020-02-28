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
      specVersion = "2.4";
      identifier = { name = "antiope-athena"; version = "7.5.1"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-athena" or (buildDepError "amazonka-athena"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "antiope-athena-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."amazonka" or (buildDepError "amazonka"))
            (hsPkgs."amazonka-athena" or (buildDepError "amazonka-athena"))
            (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
            (hsPkgs."antiope-athena" or (buildDepError "antiope-athena"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }