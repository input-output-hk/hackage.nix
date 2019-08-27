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
    flags = { threaded = true; network-uri = true; };
    package = {
      specVersion = "1.10.2";
      identifier = { name = "leksah-server"; version = "0.15.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://leksah.org";
      url = "http://code.haskell.org/leksah-collector";
      synopsis = "Metadata collection for leksah";
      description = "The interface to GHC-API for leksah";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-shared" or (buildDepError "binary-shared"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."executable-path" or (buildDepError "executable-path"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ltk" or (buildDepError "ltk"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."process" or (buildDepError "process"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."haddock-api" or (buildDepError "haddock-api"))
            (hsPkgs."haddock-library" or (buildDepError "haddock-library"))
            (hsPkgs."bin-package-db" or (buildDepError "bin-package-db"))
            ]
          else if compiler.isGhc && (compiler.version).ge "7.8"
            then [ (hsPkgs."haddock-api" or (buildDepError "haddock-api")) ]
            else [
              (hsPkgs."haddock" or (buildDepError "haddock"))
              ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or (sysDepError "kernel32"))
          (pkgs."pango-1.0" or (sysDepError "pango-1.0"))
          (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
          ];
        };
      exes = {
        "leksah-server" = {
          depends = (([
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-shared" or (buildDepError "binary-shared"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ltk" or (buildDepError "ltk"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."haddock-api" or (buildDepError "haddock-api"))
              (hsPkgs."haddock-library" or (buildDepError "haddock-library"))
              (hsPkgs."bin-package-db" or (buildDepError "bin-package-db"))
              ]
            else if compiler.isGhc && (compiler.version).ge "7.8"
              then [ (hsPkgs."haddock-api" or (buildDepError "haddock-api")) ]
              else [
                (hsPkgs."haddock" or (buildDepError "haddock"))
                ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [ (hsPkgs."network" or (buildDepError "network")) ]);
          libs = (pkgs.lib).optionals (system.isWindows) [
            (pkgs."kernel32" or (sysDepError "kernel32"))
            (pkgs."pango-1.0" or (sysDepError "pango-1.0"))
            (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
            ];
          };
        "leksahecho" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          };
        "leksahtrue" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      tests = {
        "test-tool" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."leksah-server" or (buildDepError "leksah-server"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }