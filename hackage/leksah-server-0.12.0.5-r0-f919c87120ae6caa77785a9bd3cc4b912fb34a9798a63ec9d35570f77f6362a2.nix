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
    flags = { curl = false; libcurl = false; threaded = true; };
    package = {
      specVersion = "1.10.2";
      identifier = { name = "leksah-server"; version = "0.12.0.5"; };
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
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.4"
          then [ (hsPkgs."haddock" or (errorHandler.buildDepError "haddock")) ]
          else if compiler.isGhc && (compiler.version).ge "7.2"
            then [
              (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
              ]
            else if compiler.isGhc && (compiler.version).ge "7.0"
              then [
                (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                ]
              else if compiler.isGhc && (compiler.version).ge "6.12"
                then [
                  (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                  ]
                else [
                  (hsPkgs."haddock-leksah" or (errorHandler.buildDepError "haddock-leksah"))
                  ])) ++ (if compiler.isGhc && (compiler.version).ge "7.2"
          then [ (hsPkgs."process" or (errorHandler.buildDepError "process")) ]
          else [
            (hsPkgs."process-leksah" or (errorHandler.buildDepError "process-leksah"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or (errorHandler.buildDepError "curl"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah-server" = {
          depends = ((([
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.4"
            then [
              (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
              ]
            else if compiler.isGhc && (compiler.version).ge "7.2"
              then [
                (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                ]
              else if compiler.isGhc && (compiler.version).ge "7.0"
                then [
                  (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                  ]
                else if compiler.isGhc && (compiler.version).ge "6.12"
                  then [
                    (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
                    ]
                  else [
                    (hsPkgs."haddock-leksah" or (errorHandler.buildDepError "haddock-leksah"))
                    ])) ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [
              (hsPkgs."process-leksah" or (errorHandler.buildDepError "process-leksah"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ])) ++ (pkgs.lib).optional (flags.libcurl) (hsPkgs."curl" or (errorHandler.buildDepError "curl"));
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
          buildable = true;
          };
        "leksahecho" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "7.2"
            then [
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [
              (hsPkgs."process-leksah" or (errorHandler.buildDepError "process-leksah"))
              ]);
          buildable = true;
          };
        };
      };
    }