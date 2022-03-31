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
      identifier = { name = "time-units-types"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2022 Michael B. Gale";
      maintainer = "github@michael-gale.co.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/time-units-types#readme";
      url = "";
      synopsis = "Type-level representations of time durations.";
      description = "Please see the README on GitHub at <https://github.com/mbg/time-units-types#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          ];
        buildable = true;
        };
      };
    }