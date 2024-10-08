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
      specVersion = "1.2";
      identifier = { name = "ix-shapable"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tracy Wadleigh <tracy.wadleigh@gmail.com>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Reshape multi-dimensional arrays.";
      description = "Reshape multi-dimensional arrays.\n\nProvides the 'Shapable' class, respresenting those\ninstances of 'Ix' that provide to arrays indexing\nthat is isomorphic to that of C-style\nmulti-dimensional arrays.\n\nFactored out of the 'carray' library with the kind\npermission of its author.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }