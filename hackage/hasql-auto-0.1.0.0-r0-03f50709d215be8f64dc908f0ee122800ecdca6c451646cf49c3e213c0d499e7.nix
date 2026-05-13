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
      specVersion = "2.4";
      identifier = { name = "hasql-auto"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2026 Michael Ledger";
      maintainer = "Michael Ledger <mike@quasimal.com>";
      author = "Michael Ledger <mike@quasimal.com>";
      homepage = "https://gitlab.com/combobulate.systems/hasql-auto";
      url = "";
      synopsis = "Automatically derived encoders and decoders for Hasql";
      description = "\nWrite less boilerplate when decoding or encoding things out of or into Hasql.\n\nThis package provides a superset of functionality of\n[hasql-implicits](https://hackage.haskell.org/package/hasql-implicits) and\n[hasql-generic](https://hackage.haskell.org/package/hasql-generic), by adding\nits own utility functions, types, and instances.\n\n\"Hasql.Auto.Decoders\" is substantively derived from  [hasql-implicits](https://hackage.haskell.org/package/hasql-implicits).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."postgresql-binary" or (errorHandler.buildDepError "postgresql-binary"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }