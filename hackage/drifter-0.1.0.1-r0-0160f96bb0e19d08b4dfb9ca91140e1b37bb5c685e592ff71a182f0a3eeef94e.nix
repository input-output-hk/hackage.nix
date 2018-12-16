{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drifter";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrewrademacher@gmail.com";
      author = "AndrewRademacher";
      homepage = "https://github.com/AndrewRademacher/drifter";
      url = "";
      synopsis = "Simple schema management for arbitrary databases.";
      description = "Simple support for migrating database schemas, which allows\nhaskell functions to be run as a part of the migration.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
    };
  }