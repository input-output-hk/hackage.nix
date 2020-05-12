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
    flags = { yi = false; dyre = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "leksah"; version = "0.10.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "2007-2011 Juergen Nicklisch-Franken, Hamish Mackenzie";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken, Hamish Mackenzie";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/leksah";
      synopsis = "Haskell IDE written in Haskell";
      description = "An Integrated Development Environment for Haskell written in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process-leksah" or (errorHandler.buildDepError "process-leksah"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
          (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."ige-mac-integration" or (errorHandler.buildDepError "ige-mac-integration"))) ++ (pkgs.lib).optional (flags.yi) (hsPkgs."yi" or (errorHandler.buildDepError "yi"))) ++ (pkgs.lib).optional (flags.yi && flags.dyre) (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        buildable = true;
        };
      exes = {
        "leksah" = {
          depends = ((((if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ]) ++ (pkgs.lib).optional (system.isOsx) (hsPkgs."ige-mac-integration" or (errorHandler.buildDepError "ige-mac-integration"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "6.12.3" && flags.yi) (hsPkgs."yi" or (errorHandler.buildDepError "yi"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "6.12.3" && flags.yi && flags.dyre) (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))) ++ (if compiler.isGhc && (compiler.version).lt "6.12.3"
            then [
              (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."gtksourceview2" or (errorHandler.buildDepError "gtksourceview2"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."process-leksah" or (errorHandler.buildDepError "process-leksah"))
              (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
              (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."ltk" or (errorHandler.buildDepError "ltk"))
              (hsPkgs."binary-shared" or (errorHandler.buildDepError "binary-shared"))
              (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
              (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
              (hsPkgs."leksah-server" or (errorHandler.buildDepError "leksah-server"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
              ]
            else [
              (hsPkgs."leksah" or (errorHandler.buildDepError "leksah"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ]);
          libs = (pkgs.lib).optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
          buildable = true;
          };
        };
      };
    }