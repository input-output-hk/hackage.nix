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
      specVersion = "1.2";
      identifier = { name = "Interpolation"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "aleator@gmail.com";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Multiline strings, interpolation and templating.";
      description = "This package adds quasiquoter for multiline\nstrings, interpolation and simple templating.\nHandy for text generation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }