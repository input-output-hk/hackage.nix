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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "mime"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 Galois Inc.";
      maintainer = "sof@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Working with MIME types.";
      description = "Working with MIME types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }