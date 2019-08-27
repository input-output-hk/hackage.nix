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
    flags = {
      native-dns = true;
      debug-expensive-assertions = false;
      debug-conflict-sets = false;
      debug-tracetree = false;
      lib = false;
      monolithic = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-install"; version = "2.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2018, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.\n\nThis package only provides an executable and cannot be used as a\nlibrary (ignore the module listing below.)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."echo" or (buildDepError "echo"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
          ] ++ (pkgs.lib).optionals (flags.native-dns) (if system.isWindows
          then [ (hsPkgs."windns" or (buildDepError "windns")) ]
          else [
            (hsPkgs."resolv" or (buildDepError "resolv"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs."tracetree" or (buildDepError "tracetree"));
        };
      exes = {
        "cabal" = {
          depends = (if flags.lib
            then [
              (hsPkgs."cabal-install" or (buildDepError "cabal-install"))
              (hsPkgs."Cabal" or (buildDepError "Cabal"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              ]
            else ((([
              (hsPkgs."async" or (buildDepError "async"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
              (hsPkgs."binary" or (buildDepError "binary"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."Cabal" or (buildDepError "Cabal"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."echo" or (buildDepError "echo"))
              (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."hashable" or (buildDepError "hashable"))
              (hsPkgs."HTTP" or (buildDepError "HTTP"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."stm" or (buildDepError "stm"))
              (hsPkgs."tar" or (buildDepError "tar"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."zlib" or (buildDepError "zlib"))
              (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
              ] ++ (pkgs.lib).optionals (flags.native-dns) (if system.isWindows
              then [ (hsPkgs."windns" or (buildDepError "windns")) ]
              else [
                (hsPkgs."resolv" or (buildDepError "resolv"))
                ])) ++ (if system.isWindows
              then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
              else [
                (hsPkgs."unix" or (buildDepError "unix"))
                ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs."tracetree" or (buildDepError "tracetree"))) ++ (pkgs.lib).optionals (flags.monolithic) [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          libs = (pkgs.lib).optional (system.isAix) (pkgs."bsd" or (sysDepError "bsd"));
          };
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cabal-install" or (buildDepError "cabal-install"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        "memory-usage-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-install" or (buildDepError "cabal-install"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        "solver-quickcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-install" or (buildDepError "cabal-install"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "integration-tests2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-install" or (buildDepError "cabal-install"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            ];
          };
        };
      };
    }