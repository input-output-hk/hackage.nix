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
      identifier = { name = "cld2"; version = "0.1.1.1"; };
      license = "Apache-2.0";
      copyright = "Copyright 2014 Daniel Fox Franke";
      maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Daniel Fox Franke <dfoxfranke@gmail.com>";
      homepage = "https://github.com/dfoxfranke/haskell-cld2";
      url = "";
      synopsis = "Haskell bindings to Google's Compact Language Detector 2";
      description = "This package provides simple Haskell bindings for Compact Language\nDetector 2, a language-detection library used by Google Chrome.\nSee <https://code.google.com/p/cld2/> for more information on CLD2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
        };
      };
    }