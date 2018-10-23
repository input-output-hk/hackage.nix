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
        name = "postgresql-common-persistent";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/postgresql-common#readme";
      url = "";
      synopsis = "Persistent compatibility for postgresql-common";
      description = "Please see the README on GitHub at <https://github.com/iand675/postgresql-common-persistent#readme>";
      buildType = "Simple";
    };
    components = {
      "postgresql-common-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.persistent)
          (hsPkgs.postgresql-common)
          (hsPkgs.text)
        ];
      };
      tests = {
        "postgresql-common-persistent-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.persistent)
            (hsPkgs.postgresql-common)
            (hsPkgs.postgresql-common-persistent)
            (hsPkgs.text)
          ];
        };
      };
    };
  }