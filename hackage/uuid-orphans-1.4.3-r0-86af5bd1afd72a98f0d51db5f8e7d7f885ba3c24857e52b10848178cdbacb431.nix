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
      identifier = { name = "uuid-orphans"; version = "1.4.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Fox";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "";
      url = "";
      synopsis = "Orphan instances for the UUID datatype";
      description = "Orphan instances for the UUID datatype.  Currently , instances\nfor SafeCopy and PathInfo are provided.  The package version number\nis inherited from the current version of uuid.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          ];
        buildable = true;
        };
      };
    }