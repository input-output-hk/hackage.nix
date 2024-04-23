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
      identifier = { name = "utf8-light"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Matt Morrow";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Unicode";
      description = "Lightweight UTF8 handling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }