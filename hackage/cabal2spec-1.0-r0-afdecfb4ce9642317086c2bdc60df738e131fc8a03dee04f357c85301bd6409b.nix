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
      identifier = { name = "cabal2spec"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "konrad@tylerc.org";
      author = "Conrad Meyer, Yaakov M. Nemoy";
      homepage = "https://fedorahosted.org/cabal2spec/";
      url = "";
      synopsis = "Generates RPM Spec files from cabal files";
      description = "This package provides specfile templates and a script cabal2spec for easy\npackaging of Haskell Cabal packages (hackages) for ghc following\nthe Fedora Haskell Packaging Guidelines and associated RPM macros.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          ];
          buildable = true;
        };
      };
    };
  }