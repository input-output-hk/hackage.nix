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
    flags = { curl = false; libcurl = false; threaded = true; };
    package = {
      specVersion = "1.10.2";
      identifier = { name = "leksah-server"; version = "0.13.1.0"; };
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
        depends = ((([
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
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.8"
          then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
          else if compiler.isGhc && (compiler.version).ge "7.6"
            then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
            else if compiler.isGhc && (compiler.version).ge "7.4.2"
              then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
              else if compiler.isGhc && (compiler.version).ge "7.4"
                then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                else if compiler.isGhc && (compiler.version).ge "7.2"
                  then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                  else if compiler.isGhc && (compiler.version).ge "7.0"
                    then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                    else if compiler.isGhc && (compiler.version).ge "6.12"
                      then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                      else [
                        (hsPkgs."haddock-leksah" or (buildDepError "haddock-leksah"))
                        ])) ++ (if compiler.isGhc && (compiler.version).ge "7.2"
          then [ (hsPkgs."process" or (buildDepError "process")) ]
          else [
            (hsPkgs."process-leksah" or (buildDepError "process-leksah"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or (buildDepError "curl"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or (sysDepError "kernel32"))
          (pkgs."pango-1.0" or (sysDepError "pango-1.0"))
          (pkgs."glib-2.0" or (sysDepError "glib-2.0"))
          ];
        };
      exes = {
        "leksah-server" = {
          depends = ((([
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
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.8"
            then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
            else if compiler.isGhc && (compiler.version).ge "7.6"
              then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
              else if compiler.isGhc && (compiler.version).ge "7.4.2"
                then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                else if compiler.isGhc && (compiler.version).ge "7.4"
                  then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                  else if compiler.isGhc && (compiler.version).ge "7.2"
                    then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                    else if compiler.isGhc && (compiler.version).ge "7.0"
                      then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                      else if compiler.isGhc && (compiler.version).ge "6.12"
                        then [ (hsPkgs."haddock" or (buildDepError "haddock")) ]
                        else [
                          (hsPkgs."haddock-leksah" or (buildDepError "haddock-leksah"))
                          ])) ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [ (hsPkgs."process" or (buildDepError "process")) ]
            else [
              (hsPkgs."process-leksah" or (buildDepError "process-leksah"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or (buildDepError "curl"));
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
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [ (hsPkgs."process" or (buildDepError "process")) ]
            else [
              (hsPkgs."process-leksah" or (buildDepError "process-leksah"))
              ]);
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
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [ (hsPkgs."process" or (buildDepError "process")) ]
            else [
              (hsPkgs."process-leksah" or (buildDepError "process-leksah"))
              ]);
          };
        };
      };
    }