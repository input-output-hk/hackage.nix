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
      identifier = { name = "mime"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2009 Galois Inc.";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Sigbjorn Finne, Galois, Inc.";
      homepage = "https://github.com/GaloisInc/mime";
      url = "";
      synopsis = "Working with MIME types.";
      description = "Working with MIME types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }