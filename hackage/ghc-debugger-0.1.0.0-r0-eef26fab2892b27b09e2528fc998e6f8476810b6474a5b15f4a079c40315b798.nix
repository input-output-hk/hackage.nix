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
      specVersion = "3.0";
      identifier = { name = "ghc-debugger"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rodrigo@well-typed.com";
      author = "Rodrigo Mesquita";
      homepage = "https://github.com/well-typed/ghc-debugger";
      url = "";
      synopsis = "A step-through machine-interface debugger for GHC Haskell";
      description = "The GHC debugger package provides a binary\n@ghc-debug-adapter@ that implements the Debug Adapter\nProtocol (DAP) for debugging Haskell programs.\n.\nThe Debug Adapter is implemented on top of the\n@ghc-debugger@ library which defines the primitive\ndebugging capabilities. These debugger features are\nimplemented by managing a GHC session and debugging it\nthrough the GHC API.\n.\nThe @ghc-debug-adapter@ is transparently compatible with\nmost projects because it uses @hie-bios@ to figure out the\nright flags to invoke GHC with.\n.\nAdditional information can be found [in the README](https://github.com/well-typed/ghc-debugger).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      exes = {
        "ghc-debug-adapter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."ghc-debugger" or (errorHandler.buildDepError "ghc-debugger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dap" or (errorHandler.buildDepError "dap"))
            (hsPkgs."hie-bios" or (errorHandler.buildDepError "hie-bios"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ghc-debugger-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-debugger" or (errorHandler.buildDepError "ghc-debugger"))
          ];
          buildable = true;
        };
      };
    };
  }