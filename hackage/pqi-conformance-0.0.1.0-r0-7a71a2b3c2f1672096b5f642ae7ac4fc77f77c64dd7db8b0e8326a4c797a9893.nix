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
      identifier = { name = "pqi-conformance"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2026, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/pqi-conformance";
      url = "";
      synopsis = "Differential conformance tests for pqi adapters";
      description = "A reusable @hspec@ toolkit that checks any @pqi@ 'Pqi.IsConnection'\nadapter against the FFI reference adapter. It boots a throwaway PostgreSQL\ncontainer (via @testcontainers@), runs the same operation on the candidate and\nthe FFI connection, and asserts that the protocol-derived observations match.\n\n.\n\nEach adapter's own test suite reuses these spec builders, wiring itself in as\nthe candidate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
          (hsPkgs."testcontainers-postgresql" or (errorHandler.buildDepError "testcontainers-postgresql"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }