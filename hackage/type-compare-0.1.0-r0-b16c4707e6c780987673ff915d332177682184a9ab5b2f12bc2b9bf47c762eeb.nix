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
      specVersion = "1.12";
      identifier = { name = "type-compare"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-dependent-literals#readme";
      url = "";
      synopsis = "Type-level Ord compatibility layer";
      description = "In @base-4.16.0.0@, an open type family @Compare@ was added as a type-level\nanalog of @Ord@.  This package provides a compatible interface on earlier\nversions of @base@, and re-exports the canonical one with later versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }