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
      identifier = { name = "powerqueue-levelmem"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A high performance in memory and LevelDB backend for powerqueue";
      description = "A high performance in memory and LevelDB backend for powerqueue";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."powerqueue" or (buildDepError "powerqueue"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
          (hsPkgs."focus" or (buildDepError "focus"))
          (hsPkgs."leveldb-haskell" or (buildDepError "leveldb-haskell"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "powerqueue-levelmem-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."powerqueue-levelmem" or (buildDepError "powerqueue-levelmem"))
            (hsPkgs."powerqueue" or (buildDepError "powerqueue"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          libs = [
            (pkgs."stdc++" or (sysDepError "stdc++"))
            (pkgs."leveldb" or (sysDepError "leveldb"))
            (pkgs."snappy" or (sysDepError "snappy"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "powerqueue-levelmem-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."powerqueue" or (buildDepError "powerqueue"))
            (hsPkgs."powerqueue-levelmem" or (buildDepError "powerqueue-levelmem"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          libs = [
            (pkgs."stdc++" or (sysDepError "stdc++"))
            (pkgs."leveldb" or (sysDepError "leveldb"))
            (pkgs."snappy" or (sysDepError "snappy"))
            ];
          buildable = true;
          };
        };
      };
    }