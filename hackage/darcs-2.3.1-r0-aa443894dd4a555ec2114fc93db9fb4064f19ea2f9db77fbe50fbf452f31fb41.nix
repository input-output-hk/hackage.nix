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
      curl-pipelining = false;
      http = true;
      bytestring = true;
      zlib = true;
      utf8-string = true;
      terminfo = true;
      type-witnesses = false;
      color = true;
      mmap = true;
      test = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs"; version = "2.3.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "<darcs-users@darcs.net>";
      author = "David Roundy <droundy@darcs.net>, <darcs-users@darcs.net>";
      homepage = "http://darcs.net/";
      url = "";
      synopsis = "a distributed, interactive, smart revision control system";
      description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Every user has access to the full\ncommand set, removing boundaries between server and\nclient or committer and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to\nuse because it asks you questions in response to\nsimple commands, giving you choices in your work\nflow. You can choose to record one change in a file,\nwhile ignoring another. As you update from upstream,\nyou can review each patch name, even the full \"diff\"\nfor interesting patches.\n\n* Smart: Originally developed by physicist David\nRoundy, darcs is based on a unique algebra of\npatches.\n\nThis smartness lets you respond to changing demands\nin ways that would otherwise not be possible. Learn\nmore about spontaneous branches with darcs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."hashed-storage" or (buildDepError "hashed-storage"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."random" or (buildDepError "random"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or (buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (buildDepError "terminfo"));
        libs = (pkgs.lib).optional (flags.curl) (pkgs."curl" or (sysDepError "curl")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z"));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or (pkgConfDepError "libcurl"))));
        };
      exes = {
        "witnesses" = {
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z"));
          };
        "darcs" = {
          depends = (((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hashed-storage" or (buildDepError "hashed-storage"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.http) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or (buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (buildDepError "terminfo"));
          libs = ((pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z")) ++ (pkgs.lib).optional (flags.curl) (pkgs."curl" or (sysDepError "curl"))) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z"));
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or (pkgConfDepError "libcurl"))));
          };
        "unit" = {
          depends = ((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optionals (!(!flags.test)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (buildDepError "terminfo"));
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (sysDepError "z"));
          };
        };
      };
    }