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
    flags = { strict = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "iso-deriving"; version = "0.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hans Hoeglund <hans.hoeglund@tweag.io>";
      author = "Hans Hoeglund";
      homepage = "";
      url = "";
      synopsis = "A set of libraries for composition, analysis and manipulation of music.";
      description = "The GHC extension DerivingVia allow derivation through a specific\nmorphism: coerce. We present a library iso-deriving generalizing DerivingVia\nto arbitrary morphisms. This is particularly useful for prototypes and\nspecifications of instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "iso-deriving-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."iso-deriving" or (errorHandler.buildDepError "iso-deriving"))
            ];
          buildable = true;
          };
        };
      };
    }