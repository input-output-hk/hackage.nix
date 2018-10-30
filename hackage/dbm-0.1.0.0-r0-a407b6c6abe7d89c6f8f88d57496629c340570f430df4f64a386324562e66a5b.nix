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
        name = "dbm";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/relrod/dbm";
      url = "";
      synopsis = "A *simple* database migration tool.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dbm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ini)
            (hsPkgs.optparse-applicative)
            (hsPkgs.sqlite-simple)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }