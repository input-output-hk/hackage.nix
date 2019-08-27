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
      static = false;
      terminfo = true;
      threaded = true;
      executable = true;
      rts = false;
      optimize = true;
      warn-as-error = false;
      libiconv = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.16";
      identifier = { name = "darcs"; version = "2.12.1"; };
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
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."regex-compat-tdfa" or (buildDepError "regex-compat-tdfa"))
          (hsPkgs."regex-applicative" or (buildDepError "regex-applicative"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
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
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."sandi" or (buildDepError "sandi"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (buildDepError "network"))
            ])) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (buildDepError "terminfo"));
        libs = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (!flags.pkgconfig) (pkgs."curl" or (sysDepError "curl")));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."libcurl" or (pkgConfDepError "libcurl")));
        };
      exes = {
        "darcs" = {
          depends = [
            (hsPkgs."darcs" or (buildDepError "darcs"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "darcs-test" = {
          depends = [
            (hsPkgs."darcs" or (buildDepError "darcs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."FindBin" or (buildDepError "FindBin"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
          };
        };
      };
    }