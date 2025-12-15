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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ClickHaskell-tls"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Kovalev Dmitry";
      maintainer = "Kovalev Dmitry";
      author = "Kovalev Dmitry";
      homepage = "https://clickhaskell.dev/";
      url = "";
      synopsis = "ClickHaskell TLS extension";
      description = "ClickHaskell library extension with provided TLS support ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ClickHaskell" or (errorHandler.buildDepError "ClickHaskell"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
        ];
        buildable = true;
      };
    };
  }