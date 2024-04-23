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
      specVersion = "1.0";
      identifier = { name = "hsp"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg, Joel Bjornson";
      homepage = "http://code.google.com/p/hsp";
      url = "";
      synopsis = "Haskell Server Pages is a library for writing dynamic server-side web pages.";
      description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. Features include:\n\n* Embedded XML syntax\n\n* A (low-to-mid-level) programming model for writing dynamic web pages\n\n* A cgi-handler utility (as a separate package, hsp-cgi)\n\nFor details on usage, please see the website, and the author's thesis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."harp" or (errorHandler.buildDepError "harp"))
          (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
          (hsPkgs."HJScript" or (errorHandler.buildDepError "HJScript"))
        ];
        buildable = true;
      };
    };
  }