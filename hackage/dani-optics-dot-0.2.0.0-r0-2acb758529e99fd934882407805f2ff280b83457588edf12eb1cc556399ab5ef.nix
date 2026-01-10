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
      specVersion = "3.4";
      identifier = { name = "dani-optics-dot"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Use OverloadedRecordDot for nested optics access.";
      description = "Extra typeclasses and instances for the \"optics-core\" package,\nthat allow syntax like @the.foo.bar@ to express the \ncomposition of record field lenses @foo@ and @bar@.\n\nFor each datatype, we can select through @DerivingVia@ how\nto obtain optics for its fields or constructors.\n\nUsually the optics are obtained through the built-in support\n\"optics-core\" has for generic deriving, but other methods\nare supported as well.\n\nType-changing updates are supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
        ];
        buildable = true;
      };
      tests = {
        "optimetrista-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."dani-optics-dot" or (errorHandler.buildDepError "dani-optics-dot"))
          ];
          buildable = true;
        };
      };
    };
  }