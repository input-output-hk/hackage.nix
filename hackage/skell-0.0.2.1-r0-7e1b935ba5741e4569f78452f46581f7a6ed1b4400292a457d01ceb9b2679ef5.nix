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
      identifier = { name = "skell"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "pharpend2@gmail.com";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/skell";
      url = "";
      synopsis = "An overly complex Haskell web framework.";
      description = "Skell is a Haskell web framework. Much like an actual skeleton, Skell is both\ncomplex and inflexible. Skell is inspired by Happstack, but looks more like\nYesod on the back-end.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }