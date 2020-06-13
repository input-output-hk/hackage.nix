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
      identifier = { name = "xml"; version = "1.3.14"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Galois Inc.";
      maintainer = "diatchki@galois.com";
      author = "Galois Inc.";
      homepage = "https://github.com/GaloisInc/xml";
      url = "";
      synopsis = "A simple XML library.";
      description = "A simple XML library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }