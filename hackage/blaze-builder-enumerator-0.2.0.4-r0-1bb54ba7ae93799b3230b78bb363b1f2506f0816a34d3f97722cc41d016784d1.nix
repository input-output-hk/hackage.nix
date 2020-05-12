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
      specVersion = "1.6";
      identifier = { name = "blaze-builder-enumerator"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, 2011 Simon Meier\noriginal package by Thomas Sutton <me@thomas-sutton.id.au>";
      maintainer = "Simon Meier <iridcode@gmail.com>";
      author = "Simon Meier <iridcode@gmail.com>";
      homepage = "https://github.com/meiersi/blaze-builder-enumerator ";
      url = "";
      synopsis = "Enumeratees for the incremental conversion of builders to\nbytestrings.";
      description = "This package integrates the builders from the blaze-builder package with\nthe enumerator package. It provides infrastructure and enumeratees for\nincrementally executing builders and pass the filled chunks to a bytestring\niteratee.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }