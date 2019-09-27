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
    flags = { old-base = false; bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal-install"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2005 Lemmih <lemmih@gmail.com>, 2006 Paolo Martini <paolo@nemail.it>";
      maintainer = "cabal-devel@haskell.org";
      author = "Lemmih <lemmih@gmail.com>, Paolo Martini <paolo@nemail.it>";
      homepage = "";
      url = "";
      synopsis = "Automatic package handling for Haskell";
      description = "apt-get like tool for Haskell. The \\'cabal\\' command-line program\nsimplifies the process of managing Haskell software by automating the\nfetching, configuration, compilation and installation of Haskell\nlibraries and programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal" = {
          depends = ([
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            ] ++ (if flags.old-base
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."pretty" or (buildDepError "pretty"))
              ])) ++ (if flags.bytestring-in-base
            then [ (hsPkgs."base" or (buildDepError "base")) ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]);
          buildable = true;
          };
        };
      };
    }