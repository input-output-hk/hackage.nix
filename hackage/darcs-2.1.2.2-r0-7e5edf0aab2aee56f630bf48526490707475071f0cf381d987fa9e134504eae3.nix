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
      libwww = true;
      http = true;
      external-bytestring = true;
      external-zlib = true;
      haskeline = false;
      terminfo = true;
      curses = false;
      type-witnesses = false;
      color = true;
      base3 = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs"; version = "2.1.2.2"; };
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
      exes = {
        "darcs" = {
          depends = (((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (if flags.base3
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."random" or (buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optionals (!flags.libwww) ((pkgs.lib).optionals (flags.http) [
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ]))) ++ (pkgs.lib).optional (flags.external-bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.external-zlib) (hsPkgs."zlib" or (buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo) (hsPkgs."terminfo" or (buildDepError "terminfo"))) ++ (pkgs.lib).optional (flags.haskeline) (hsPkgs."haskeline" or (buildDepError "haskeline"));
          libs = ((pkgs.lib).optional (flags.curl) (pkgs."curl" or (sysDepError "curl")) ++ (pkgs.lib).optional (!flags.external-zlib) (pkgs."z" or (sysDepError "z"))) ++ (pkgs.lib).optional (flags.curses) (pkgs."curses" or (sysDepError "curses"));
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optional (flags.curl-pipelining) (pkgconfPkgs."libcurl" or (pkgConfDepError "libcurl")));
          build-tools = (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optional (flags.libwww) (hsPkgs.buildPackages.libwww-config or (pkgs.buildPackages.libwww-config or (buildToolDepError "libwww-config"))));
          buildable = true;
          };
        };
      };
    }