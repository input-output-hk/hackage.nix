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
      specVersion = "2.0";
      identifier = { name = "smash-microlens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Emily Pillmore <emilypi@cohomolo.gy>";
      maintainer = "emilypi@cohomolo.gy";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/smash";
      url = "";
      synopsis = "Optics for the `smash` library";
      description = "Optics for the `smash` library using `microlens`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."smash" or (errorHandler.buildDepError "smash"))
          ];
        buildable = true;
        };
      tests = {
        "smash-microlens-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }