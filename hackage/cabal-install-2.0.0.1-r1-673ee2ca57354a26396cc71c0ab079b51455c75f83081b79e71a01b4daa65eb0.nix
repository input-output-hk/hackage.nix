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
      old-bytestring = false;
      old-directory = false;
      network-uri = true;
      debug-expensive-assertions = false;
      debug-conflict-sets = false;
      debug-tracetree = false;
      parsec = false;
      monolithic = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-install"; version = "2.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2003-2017, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      exes = {
        "cabal" = {
          depends = ((((((([
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
            (hsPkgs."echo" or (buildDepError "echo"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            ] ++ (if flags.old-bytestring
            then [
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
              ]
            else [
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ])) ++ (if flags.old-directory
            then [
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."process" or (buildDepError "process"))
              ]
            else [
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              ])) ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if system.isWindows
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
          depends = ((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs."old-time" or (buildDepError "old-time"))) ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs."tracetree" or (buildDepError "tracetree"));
          };
        "memory-usage-tests" = {
          depends = ((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ] ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs."old-time" or (buildDepError "old-time"))) ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs."tracetree" or (buildDepError "tracetree"));
          };
        "solver-quickcheck" = {
          depends = ((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ] ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs."old-time" or (buildDepError "old-time"))) ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.debug-conflict-sets) (hsPkgs."base" or (buildDepError "base"))) ++ (pkgs.lib).optional (flags.debug-tracetree) (hsPkgs."tracetree" or (buildDepError "tracetree"));
          };
        "integration-tests2" = {
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
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
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
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            ] ++ (pkgs.lib).optional (flags.old-bytestring) (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))) ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs."old-time" or (buildDepError "old-time"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
          };
        };
      };
    }