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
      identifier = { name = "pcre-heavy"; version = "1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2015 Val Packett <val@packett.cool>";
      maintainer = "val@packett.cool";
      author = "Val Packett";
      homepage = "https://codeberg.org/valpackett/pcre-heavy";
      url = "";
      synopsis = "A regexp library on top of pcre-light you can actually use.";
      description = "A regular expressions library that does not suck.\nBased on <https://hackage.haskell.org/package/pcre-light pcre-light>.\nTakes and returns <https://hackage.haskell.org/package/stringable Stringables> everywhere.\nIncludes a QuasiQuoter for regexps that does compile time checking.\nSEARCHES FOR MULTIPLE MATCHES! DOES REPLACEMENT!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }