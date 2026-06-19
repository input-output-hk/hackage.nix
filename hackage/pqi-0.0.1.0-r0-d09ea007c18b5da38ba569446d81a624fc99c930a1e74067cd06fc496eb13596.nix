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
      identifier = { name = "pqi"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2026, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/pqi";
      url = "";
      synopsis = "Driver-agnostic interface to the PostgreSQL libpq API";
      description = "@pqi@ reproduces the API surface of the @postgresql-libpq@ package, but\nreifies the connection (and its results) as a type class instead of a single\nconcrete type. This lets callers program against one interface and pick an\nadapter at the type level:\n\n* @pqi-ffi@ — a thin adapter backed by the C @libpq@ library via\n  @postgresql-libpq@.\n\n* @pqi-native@ — a pure-Haskell adapter that speaks the PostgreSQL wire\n  protocol directly.\n\nThis package ships only the interface: the typeclasses, types and a couple of connection-independent helpers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
          (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
        ];
        buildable = true;
      };
      tests = {
        "pqi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }