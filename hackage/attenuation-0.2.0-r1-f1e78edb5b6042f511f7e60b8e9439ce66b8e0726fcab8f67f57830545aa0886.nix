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
      identifier = { name = "attenuation"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2020-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-attenuation#readme";
      url = "";
      synopsis = "Subtyping relations and variance roles";
      description = "This lets you coerce containers (among other things) from stronger types to\nweaker types with zero runtime cost when it's safe to do so, e.g.\n@[Fin n] -> [Int]@.  This primarily comes into play when using newtypes to\nimpose additional invariants on existing types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ];
        buildable = true;
      };
    };
  }