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
      identifier = { name = "pcre-heavy"; version = "1.0.0.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2015-2025 Val Packett <val@packett.cool>";
      maintainer = "val@packett.cool";
      author = "Val Packett";
      homepage = "https://codeberg.org/valpackett/pcre-heavy";
      url = "";
      synopsis = "A regexp (regex) library on top of pcre-light you can actually use.";
      description = "A PCRE-based regular expressions library with support for multiple matches and replacements.\nBased on <https://hackage.haskell.org/package/pcre-light pcre-light>.\nTakes and returns <https://hackage.haskell.org/package/string-conversions convertible strings> everywhere.\nIncludes a QuasiQuoter for regexps that does compile time checking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
    };
  }