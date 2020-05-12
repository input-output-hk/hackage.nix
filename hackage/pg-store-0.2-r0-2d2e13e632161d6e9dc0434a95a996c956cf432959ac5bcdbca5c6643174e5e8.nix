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
      identifier = { name = "pg-store"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ole Krüger 2015";
      maintainer = "Ole Krüger <ole@vprsm.de>";
      author = "Ole Krüger <ole@vprsm.de>";
      homepage = "https://github.com/vapourismo/pg-store";
      url = "";
      synopsis = "Simple storage interface to PostgreSQL";
      description = "Simple storage interface to PostgreSQL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        buildable = true;
        };
      };
    }