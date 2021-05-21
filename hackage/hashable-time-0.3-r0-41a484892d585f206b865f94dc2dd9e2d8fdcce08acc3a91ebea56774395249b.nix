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
      identifier = { name = "hashable-time"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Karakulov <ankarakulov@gmail.com>";
      author = "Alexey Karakulov <ankarakulov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Hashable instances for Data.Time";
      description = "Hashable instances for types in Data.Time";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
          ];
        buildable = true;
        };
      tests = {
        "instances" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
            (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
            ];
          buildable = true;
          };
        };
      };
    }