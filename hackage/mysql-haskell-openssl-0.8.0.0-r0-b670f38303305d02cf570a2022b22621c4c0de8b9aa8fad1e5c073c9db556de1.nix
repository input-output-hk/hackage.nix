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
      identifier = { name = "mysql-haskell-openssl"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland       ";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/mysql-haskell";
      url = "";
      synopsis = "TLS support for mysql-haskell package using openssl";
      description = "TLS support for mysql-haskell package using openssl";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."tcp-streams" or (errorHandler.buildDepError "tcp-streams"))
          (hsPkgs."tcp-streams-openssl" or (errorHandler.buildDepError "tcp-streams-openssl"))
          (hsPkgs."wire-streams" or (errorHandler.buildDepError "wire-streams"))
          (hsPkgs."mysql-haskell" or (errorHandler.buildDepError "mysql-haskell"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
        ];
        buildable = true;
      };
    };
  }