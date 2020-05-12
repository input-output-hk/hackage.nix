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
      specVersion = "1.24";
      identifier = { name = "ONC-RPC"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "2017";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "ONC RPC (aka Sun RPC) and XDR library";
      description = "Tools and library for writing ONC (Sun) RPC clients and servers.  Provides equivalent functionality to rpcgen and librpcsvc, except in pure Haskell.  The hsrpcgen tool (and Cabal preprocessor library) allows .x XDR files to generate Haskell protocol descriptors.  The library provides a client interface to use these descriptions to make RPC calls.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (errorHandler.buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cereal or (pkgs.buildPackages.cereal or (errorHandler.buildToolDepError "cereal")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.buildToolDepError "containers")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.haskell-src-exts or (pkgs.buildPackages.haskell-src-exts or (errorHandler.buildToolDepError "haskell-src-exts")))
        (hsPkgs.buildPackages.parsec or (pkgs.buildPackages.parsec or (errorHandler.buildToolDepError "parsec")))
        (hsPkgs.buildPackages.vector or (pkgs.buildPackages.vector or (errorHandler.buildToolDepError "vector")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      exes = {
        "hsrpcgen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ONC-RPC" or (errorHandler.buildDepError "ONC-RPC"))
            ];
          buildable = true;
          };
        };
      };
    }