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
      specVersion = "2.2";
      identifier = {
        name = "postgresql-placeholder-converter";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2020 Kazuki Okamoto, 2019 IIJ Innovation Institute Inc.";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/kakkun61/postgresql-placeholder-converter";
      url = "";
      synopsis = "Converter for question mark style and dollar sign style of PostgreSQL SQL.";
      description = "This library provides functions to convert question mark style to dollar sign style of PostgreSQL SQL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-placeholder-converter" or (errorHandler.buildDepError "postgresql-placeholder-converter"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }