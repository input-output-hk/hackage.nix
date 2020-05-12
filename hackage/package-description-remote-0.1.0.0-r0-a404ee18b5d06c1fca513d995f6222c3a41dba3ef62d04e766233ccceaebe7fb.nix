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
      identifier = {
        name = "package-description-remote";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/stack-run-auto/package-description-remote";
      url = "";
      synopsis = "Fetches a 'GenericPackageDescription' from Hackage";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          ];
        buildable = true;
        };
      tests = {
        "package-description-remote-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."package-description-remote" or (errorHandler.buildDepError "package-description-remote"))
            ];
          buildable = true;
          };
        };
      };
    }