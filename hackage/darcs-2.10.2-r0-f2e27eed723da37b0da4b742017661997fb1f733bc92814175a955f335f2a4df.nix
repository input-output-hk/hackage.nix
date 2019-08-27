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
      curl = true;
      pkgconfig = false;
      http = true;
      static = false;
      terminfo = true;
      threaded = true;
      executable = true;
      hpc = false;
      rts = false;
      optimize = true;
      warn-as-error = false;
      use-local-data-map-strict = false;
      libiconv = false;
      hashed-storage-diff = false;
      use-time-1point5 = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "darcs"; version = "2.10.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "<darcs-devel@darcs.net>";
      author = "David Roundy <droundy@darcs.net>, <darcs-devel@darcs.net>";
      homepage = "http://darcs.net/";
      url = "";
      synopsis = "a distributed, interactive, smart revision control system";
      description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Every user has access to the full\ncommand set, removing boundaries between server and\nclient or committer and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to\nuse because it asks you questions in response to\nsimple commands, giving you choices in your work\nflow. You can choose to record one change in a file,\nwhile ignoring another. As you update from upstream,\nyou can review each patch name, even the full \"diff\"\nfor interesting patches.\n\n* Smart: Originally developed by physicist David\nRoundy, darcs is based on a unique algebra of\npatches.\n\nThis smartness lets you respond to changing demands\nin ways that would otherwise not be possible. Learn\nmore about spontaneous branches with darcs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
          (hsPkgs."regex-applicative" or (buildDepError "regex-applicative"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."sandi" or (buildDepError "sandi"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          ] ++ (pkgs.lib).optionals (system.isWindows) [
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."Win32" or (buildDepError "Win32"))
          ]) ++ (if flags.use-local-data-map-strict
          then [
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ]
          else [
            (hsPkgs."containers" or (buildDepError "containers"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ [
          (hsPkgs."text" or (buildDepError "text"))
          ]) ++ (if flags.use-time-1point5
          then [ (hsPkgs."time" or (buildDepError "time")) ]
          else [
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ])) ++ (pkgs.lib).optionals (flags.http) ([
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ]))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (buildDepError "terminfo"))) ++ (pkgs.lib).optional (flags.hashed-storage-diff) (hsPkgs."lcs" or (buildDepError "lcs"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
        libs = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (!flags.pkgconfig) (pkgs."curl" or (sysDepError "curl")));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."libcurl" or (pkgConfDepError "libcurl")));
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
          ];
        };
      exes = {
        "darcs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."darcs" or (buildDepError "darcs"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          };
        };
      tests = {
        "darcs-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."darcs" or (buildDepError "darcs"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."FindBin" or (buildDepError "FindBin"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ] ++ [ (hsPkgs."text" or (buildDepError "text")) ];
          build-tools = [
            (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (buildToolDepError "ghc")))
            ];
          };
        "hashed-storage-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."sandi" or (buildDepError "sandi"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
          };
        };
      };
    }