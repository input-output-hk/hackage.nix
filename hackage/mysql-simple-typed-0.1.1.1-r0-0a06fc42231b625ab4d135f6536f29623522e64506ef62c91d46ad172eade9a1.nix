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
      identifier = { name = "mysql-simple-typed"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/mysql-simple-typed";
      url = "";
      synopsis = "Typed extension to mysql simple";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."typedquery" or (errorHandler.buildDepError "typedquery"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }