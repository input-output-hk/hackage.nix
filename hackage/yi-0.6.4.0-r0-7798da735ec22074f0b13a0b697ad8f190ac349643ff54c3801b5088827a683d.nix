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
      cocoa = false;
      pango = false;
      vte = false;
      vty = true;
      scion = false;
      ghcapi = false;
      hacking = false;
      testing = true;
      dochack = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.6.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "The Haskell-Scriptable Editor";
      description = "Yi is a text editor written in Haskell and extensible in Haskell. The goal of the Yi project is\nto provide a flexible, powerful, and correct editor for haskell hacking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cautious-file" or (buildDepError "cautious-file"))
          (hsPkgs."concrete-typerep" or (buildDepError "concrete-typerep"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."data-accessor-monads-fd" or (buildDepError "data-accessor-monads-fd"))
          (hsPkgs."data-accessor-template" or (buildDepError "data-accessor-template"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hint" or (buildDepError "hint"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."pointedlist" or (buildDepError "pointedlist"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."regex-base" or (buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."rosezipper" or (buildDepError "rosezipper"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.testing) [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."random" or (buildDepError "random"))
          ]) ++ (pkgs.lib).optionals (flags.cocoa) [
          (hsPkgs."HOC" or (buildDepError "HOC"))
          (hsPkgs."HOC-AppKit" or (buildDepError "HOC-AppKit"))
          (hsPkgs."HOC-Foundation" or (buildDepError "HOC-Foundation"))
          ]) ++ (pkgs.lib).optionals (flags.pango) [
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."pango" or (buildDepError "pango"))
          ]) ++ (pkgs.lib).optionals (flags.vte) [
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."vte" or (buildDepError "vte"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          ]) ++ (pkgs.lib).optionals (flags.vty) [
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."vty" or (buildDepError "vty"))
          ]) ++ (pkgs.lib).optionals (flags.scion) [
          (hsPkgs."scion" or (buildDepError "scion"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
          ];
        };
      exes = {
        "parserTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (!flags.dochack) (hsPkgs."yi" or (buildDepError "yi"));
          };
        "yi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (!flags.dochack) (hsPkgs."yi" or (buildDepError "yi"));
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (buildToolDepError "alex")))
            ];
          };
        };
      };
    }