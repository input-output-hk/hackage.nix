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
      specVersion = "3.0";
      identifier = { name = "sqlite-simple-interpolate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "©2022 ruby0b ©2019 Elliot Cameron";
      maintainer = "ruby0b";
      author = "ruby0b";
      homepage = "https://github.com/ruby0b/sqlite-simple-interpolate";
      url = "";
      synopsis = "Interpolated SQLite queries via quasiquotation";
      description = "This package provides Quasiquoters for writing SQLite queries with inline interpolation of values.\nThe values are interpolated using toField from sqlite-simple.\nSee the README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }