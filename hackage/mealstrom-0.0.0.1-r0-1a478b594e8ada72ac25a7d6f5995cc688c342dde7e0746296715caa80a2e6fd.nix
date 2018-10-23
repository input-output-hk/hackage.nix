{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mealstrom";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) Max Amanshauser 2016";
      maintainer = "max@lambdalifting.org";
      author = "Max Amanshauser";
      homepage = "https://github.com/linearray/mealstrom";
      url = "";
      synopsis = "Manipulate FSMs and store them in PostgreSQL.";
      description = "Mealstrom is a library that allows you to work with Mealy machines,\na kind of finite-state machine, in Haskell using PostgreSQL for\npersistence.";
      buildType = "Simple";
    };
    components = {
      "mealstrom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.list-t)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resource-pool)
            (hsPkgs.stm)
            (hsPkgs.stm-containers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.uuid)
          ];
        };
      };
    };
  }