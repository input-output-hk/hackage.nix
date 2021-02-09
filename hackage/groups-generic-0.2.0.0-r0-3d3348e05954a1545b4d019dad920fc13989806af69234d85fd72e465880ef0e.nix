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
      specVersion = "2.4";
      identifier = { name = "groups-generic"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Derbyshire";
      author = "Sam Derbyshire";
      homepage = "https://github.com/sheaf/groups-generic";
      url = "";
      synopsis = "Generically derive Group instances.";
      description = "Generically derive group instances:\n\n> data MyRecord\n>   = MyRecord\n>   { field1 :: Sum Double\n>   , field2 :: Product Double\n>   , field3 :: ( Sum Int, Sum Int )\n>   }\n>   deriving Generic\n>   deriving ( Semigroup, Monoid, Group )\n>     via GenericProduct MyRecord";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          ];
        buildable = true;
        };
      };
    }