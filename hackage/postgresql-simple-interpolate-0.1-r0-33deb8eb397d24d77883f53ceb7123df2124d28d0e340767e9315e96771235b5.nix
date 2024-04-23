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
      identifier = { name = "postgresql-simple-interpolate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "©2019 Elliot Cameron";
      maintainer = "eacameron@gmail.com";
      author = "Elliot Cameron";
      homepage = "https://github.com/3noch/postgresql-simple-interpolate";
      url = "";
      synopsis = "Interpolated SQL queries via quasiquotation";
      description = "Interpolated SQL queries via quasiquotation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }