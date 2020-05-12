{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
          then [
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
            (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
            ]
          else if compiler.isGhc && (compiler.version).ge "7.8"
            then [
              (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
              ]
            else [
              (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
              ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."pango-1.0" or (errorHandler.sysDepError "pango-1.0"))
          (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
          ];
        buildable = true;
        };
      exes = {
        "leksah-server" = {
          depends = (([
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
              (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
              (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
              ]
            else if compiler.isGhc && (compiler.version).ge "7.8"
              then [
                (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
                ]
              else [
                (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ])) ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          libs = (pkgs.lib).optionals (system.isWindows) [
            (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
            (pkgs."pango-1.0" or (errorHandler.sysDepError "pango-1.0"))
            (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
            ];
          buildable = true;
          };
        "leksahecho" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        "leksahtrue" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      tests = {
        "test-tool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }