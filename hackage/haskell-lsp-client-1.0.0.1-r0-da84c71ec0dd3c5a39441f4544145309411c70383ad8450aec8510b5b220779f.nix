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
      identifier = { name = "haskell-lsp-client"; version = "1.0.0.1"; };
      license = "GPL-2.0-only";
      copyright = "2017 Jaro Reinders";
      maintainer = "jaro.reinders@gmail.com";
      author = "Jaro Reinders";
      homepage = "https://github.com/noughtmare/haskell-lsp-client#readme";
      url = "";
      synopsis = "A haskell package to build your own Language Server client.";
      description = "This package is intended for developers of text editors who want to make their text editor\ncompatible with the <https://github.com/Microsoft/language-server-protocol/blob/master/protocol.md Language Server Protocol>.\nI have developed this package with plans to integrate it in the <https://github.com/yi-editor/yi Yi Editor>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-lsp" or (errorHandler.buildDepError "haskell-lsp"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "example-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-lsp" or (errorHandler.buildDepError "haskell-lsp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskell-lsp-client" or (errorHandler.buildDepError "haskell-lsp-client"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }