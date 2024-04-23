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
      identifier = { name = "derive-monoid"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/derive-monoid#readme ";
      url = "";
      synopsis = "derive Semigroup/Monoid/IsList";
      description = "when your type can hold a list of itself, you can derive simple (but total\\/lawful) Semigroup\\/Monoid\\/IsList instances with TemplateHaskell.\n\nsee the <https://hackage.haskell.org/package/derive-monoid/docs/Derive-List.html Derive.List> for examples and documentation.\nbrowse the <https://github.com/sboosali/derive-monoid/tree/master/test/Build/Derive/List test suite> for more (buildable) examples:\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/HigherKind.hs HigherKind>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/IsList.hs IsList>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Monoid.hs Monoid>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Semigroup.hs Semigroup>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "example-derive-monoid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-monoid" or (errorHandler.buildDepError "derive-monoid"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-monoid" or (errorHandler.buildDepError "derive-monoid"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
    };
  }