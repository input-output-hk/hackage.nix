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
      identifier = { name = "gettext-th"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@christoph-bauer.net";
      author = "Christoph Bauer";
      homepage = "https://github.com/chrbauer/gettext-th";
      url = "";
      synopsis = "gettext-th can internationalise a haskell program without runtime dependencies";
      description = "The [gettext](https://www.gnu.org/software/gettext/) project provides a library and tools for internationalization and localization of software. gettext-th allows you to use the gettext tooling without adding any runtime dependencies because texts are exchanged at compile time. But this also means that you have an application per language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-gettext" or (errorHandler.buildDepError "haskell-gettext"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
        ];
        buildable = true;
      };
    };
  }