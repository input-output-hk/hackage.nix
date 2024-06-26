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
    flags = { threaded = true; llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "regexchar"; version = "0.9.0.7"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2010 Dr. Alistair Ward";
      maintainer = "regexchar <at> functionalley <dot> eu";
      author = "Dr. Alistair Ward";
      homepage = "http://functionalley.eu";
      url = "";
      synopsis = "A POSIX extended regular-expression engine.";
      description = "Provides a POSIX, extended regex-engine, specialised from the underlying polymorphic engine /regexdot/, to merely process character-lists, as is typically required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."regexdot" or (errorHandler.buildDepError "regexdot"))
          (hsPkgs."toolshed" or (errorHandler.buildDepError "toolshed"))
        ];
        buildable = true;
      };
      exes = {
        "grecce" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ] ++ [
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
          buildable = true;
        };
      };
    };
  }