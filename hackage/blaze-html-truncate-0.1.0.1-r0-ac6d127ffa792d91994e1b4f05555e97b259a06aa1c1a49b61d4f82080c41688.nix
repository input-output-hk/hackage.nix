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
      identifier = { name = "blaze-html-truncate"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m [dot] ruegenberg [at] picodesign [dot] de";
      author = "Marcel Ruegenberg";
      homepage = "http://github.com/mruegenberg/blaze-html-truncate";
      url = "";
      synopsis = "A truncator for blaze-html";
      description = "This package provides a simple function to truncate HTML, preserving tags and preventing cut-off words. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }