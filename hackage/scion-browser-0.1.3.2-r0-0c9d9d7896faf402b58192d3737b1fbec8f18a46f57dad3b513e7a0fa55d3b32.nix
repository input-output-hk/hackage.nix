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
      specVersion = "1.8";
      identifier = { name = "scion-browser"; version = "0.1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alejandro Serrano <trupill@gmail.com>";
      author = "Alejandro Serrano <trupill@gmail.com>";
      homepage = "http://github.com/serras/scion-class-browser";
      url = "";
      synopsis = "Command-line interface for browsing and searching packages documentation";
      description = "Scion Browser aims to be a command-line interface for getting information about installed Haskell packages, that could be later used by development environments. It also provides integration with Hoogle. By now, it has been integrated in EclipseFP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."aeson-native" or (errorHandler.buildDepError "aeson-native"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if compiler.isGhc && (compiler.version).ge "7.0"
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ]
          else [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ]);
        buildable = true;
        };
      exes = {
        "scion-browser" = {
          depends = ([
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."aeson-native" or (errorHandler.buildDepError "aeson-native"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if compiler.isGhc && (compiler.version).ge "7.0"
            then [
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              ]
            else [
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              ]);
          buildable = true;
          };
        };
      };
    }