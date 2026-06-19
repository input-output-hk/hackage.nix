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
      identifier = { name = "pqi-ffi"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2026, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/pqi-ffi";
      url = "";
      synopsis = "FFI adapter for pqi, backed by postgresql-libpq";
      description = "A @pqi@ adapter implemented as a thin pass-through over the\n@postgresql-libpq@ package, which binds the C @libpq@ library. Use this\nadapter when you want the fidelity of the reference C implementation; it is\nalso the oracle that the @pqi-native@ adapter is tested against.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
        ];
        buildable = true;
      };
      tests = {
        "ffi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pqi-conformance" or (errorHandler.buildDepError "pqi-conformance"))
            (hsPkgs."pqi-ffi" or (errorHandler.buildDepError "pqi-ffi"))
          ];
          buildable = true;
        };
      };
    };
  }