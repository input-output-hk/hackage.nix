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
      specVersion = "1.2";
      identifier = { name = "hubris"; version = "0.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Support library for Hubris, the Ruby <=> Haskell bridge";
      description = "Support library for Hubris, the Ruby to Haskell bridge\nmore info at <http://github.com/mwotton/Hubris-Haskell>\n\nshort version: ./Setup configure --enable-shared --ghc-options=-dynamic --extra-include-dirs=... --extra-lib-dirs=...\n\nIf you omit any of those flags, it will seem to work then blow up at runtime.\n\nAnyway, this version strips the boilerplate that used to be necessary, and is intended to be used in conjunction with <http://github.com/mwotton/Hubris>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ];
        libs = [ (pkgs."ruby" or (errorHandler.sysDepError "ruby")) ];
        buildable = true;
        };
      exes = {
        "Hubrify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          libs = [ (pkgs."ruby" or (errorHandler.sysDepError "ruby")) ];
          buildable = true;
          };
        };
      };
    }