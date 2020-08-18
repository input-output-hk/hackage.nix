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
      identifier = { name = "hasqly-mysql"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2020)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "composable SQL generation";
      description = "A mid level applicative SQL generation library\n\nHaskqly intends to be a mid-level SQL generation library.  It doesn't use advanced type extensions\nto encode the schema in the types., but provides a light applicative layer to easy the conversion\nbetween haskell and SQL.  It is inspired by the clojures honeysql library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mysql-haskell" or (errorHandler.buildDepError "mysql-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }