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
      specVersion = "1.8";
      identifier = {
        name = "HDBC-postgresql-hstore";
        version = "0.0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/hdbc-postgresql-hstore";
      url = "";
      synopsis = "Manipulate data in PostgreSQL \"hstore\" columns.";
      description = "Some helpers to get and set hstore fields with a Data.Map interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
        ];
      };
    };
  }