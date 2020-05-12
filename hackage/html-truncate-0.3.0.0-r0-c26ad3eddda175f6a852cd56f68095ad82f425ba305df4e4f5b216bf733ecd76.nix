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
      specVersion = "1.8";
      identifier = { name = "html-truncate"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Marcel Ruegenberg";
      homepage = "https://github.com/mruegenberg/html-truncate";
      url = "";
      synopsis = "A HTML truncator";
      description = "This package provides a simple function to truncate HTML in text form. It preserves tags open and close tags, prevents cut-off words and removes trailing empty tags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }