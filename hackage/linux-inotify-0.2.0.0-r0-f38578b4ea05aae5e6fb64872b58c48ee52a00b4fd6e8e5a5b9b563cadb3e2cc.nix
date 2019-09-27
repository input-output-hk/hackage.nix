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
      specVersion = "1.8";
      identifier = { name = "linux-inotify"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Thinner binding to the Linux Kernel's inotify interface";
      description = "This is a binding for GHC 7 to the Linux Kernel's inotify interface,\nwhich provides notifications to applications regarding file system\nevents,  such as file creation,  modification, deletion,  etc.\n\nSome of the advantages over hinotify are:\n\n1.  linux-inotify provides a plain getEvent operator that blocks,\ninstead of implementing a callback API.\n\n2.  linux-inotify avoids most of GHC's standard IO handling code,\nrelying on plain system calls with minimal overhead in Haskell-land.\n(However, it still does make good use of GHC's IO manager via\nnonblocking inotify sockets and threadWaitRead,  so getEvent is\nstill efficient.)\n\n3.  linux-inotify does not call forkIO, which means less context\nswitching and scheduling overhead, especially in contexts where\nhinotify's particular event router isn't a very good fit for\nyour application;  e.g. you are implementing a following log file\nprocessor.\n\nSome of the disadvantages compared to hinotify are:\n\n1.   Due to the use of `inotify_init1`,  `linux-inotify` currently\nrequires linux 2.6.27 or later,  even though `inotify` support\ndebuted in linux 2.6.13.   You can check which version of linux is\non a machine via `uname -a`.   I would like to fix this at some point,\nbut it isn't a personal priority.\n\n2.   `linux-inotify` requires GHC 7.0.2 or later,  whereas `hinotify`\nworks with many versions of GHC 6.   I have no plans to fix this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unix" or (buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }