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
    flags = {
      md5 = true;
      binary = true;
      text = true;
      uuid = true;
      scientific = true;
      aeson = true;
      hdbc = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "postgresql-typed"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "2010-2013 Chris Forno, 2014-2017 Dylan Simon";
      maintainer = "Dylan Simon <dylan-pgtyped@dylex.net>";
      author = "Dylan Simon";
      homepage = "https://github.com/dylex/postgresql-typed";
      url = "";
      synopsis = "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend";
      description = "Automatically type-check SQL statements at compile time.\nUses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.\nAllows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.\nSupports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.\n\nAlso includes an optional HDBC backend that, since it uses the raw PostgreSQL protocol, may be more efficient than the normal libpq backend in some cases (though provides no more type safety than HDBC-postgresql when used without templates).\n\nOriginally based on Chris Forno's templatepg library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (pkgs.lib).optionals (flags.md5) [
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          ]) ++ (if flags.binary
          then [
            (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ]
          else ((pkgs.lib).optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text")) ++ (pkgs.lib).optional (flags.uuid) (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))) ++ (pkgs.lib).optional (flags.scientific) (hsPkgs."scientific" or (errorHandler.buildDepError "scientific")))) ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.hdbc) (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."postgresql-typed" or (errorHandler.buildDepError "postgresql-typed"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "hdbc" = {
          depends = (pkgs.lib).optionals (flags.hdbc) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."postgresql-typed" or (errorHandler.buildDepError "postgresql-typed"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if flags.hdbc then true else false;
          };
        };
      };
    }