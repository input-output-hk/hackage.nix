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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-helper"; version = "0.3.5.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "dxld@darkboxed.org";
      author = "Daniel Gröber <dxld@darkboxed.org>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to Cabal's configuration state used by ghc-mod";
      description = "@cabal-helper@ provides a library which wraps the internal use of executables\nto lift the restrictions imposed by linking against versions of GHC before\n@7.10@.\n\n@cabal-helper@ uses a wrapper executable to compile the actual cabal-helper\nexecutable at runtime while linking against an arbitrary version of\nCabal. This runtime-compiled helper executable is then used to extract\nvarious bits and peices from Cabal\\'s on disk state (dist/setup-config)\nwritten by it's configure command.\n\nIn addition to this the wrapper executable also supports installing any\nversion of Cabal from hackage in case it cannot be found in any available\npackage database. The wrapper installs these instances of the Cabal library\ninto a private package database so as to not interfere with the user's\npackages.\n\nFurthermore the wrapper supports one special case namely reading a state\nfile for Cabal itself. This is needed as Cabal compiles it's Setup.hs using\nitself and not using any version of Cabal installed in any package database.\n\n@cabal-helper@ can compile with @Cabal >= 1.14@ but requires @Cabal >= 1.16@\nat runtime.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-helper-wrapper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-helper" or (errorHandler.buildDepError "cabal-helper"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }