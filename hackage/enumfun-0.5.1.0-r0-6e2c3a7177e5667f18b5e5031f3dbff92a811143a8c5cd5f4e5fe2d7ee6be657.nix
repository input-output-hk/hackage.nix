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
      identifier = { name = "enumfun"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2012 Liyang HU";
      maintainer = "enumfun@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/enumfun";
      url = "";
      synopsis = "Finitely represented /total/ EnumMaps";
      description = "Finitely represented /total/ EnumMaps. Comprises a partial EnumMap and\na default value. Has Applicative and Monad instances, unlike EnumMap.\n\nInspired by Conal's Data.TotalMap:\n<http://hackage.haskell.org/package/total-map>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enummapset-th" or (errorHandler.buildDepError "enummapset-th"))
        ];
        buildable = true;
      };
    };
  }