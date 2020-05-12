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
      identifier = { name = "uniqueid"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://github.com/sebfisch/uniqueid/wikis";
      url = "";
      synopsis = "Splittable Unique Identifier Supply";
      description = "This package provides splittable supplies of unique\nidentifiers. The implementation mimics (only) essential\nparts of the code that is used internally in GHC for\nthe same purpose. After improvements of the value-supply\npackage it is now deprecated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }