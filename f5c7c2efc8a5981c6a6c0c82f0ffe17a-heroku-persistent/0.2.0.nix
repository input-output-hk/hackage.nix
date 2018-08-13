{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heroku-persistent";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parse DATABASE_URL into configuration types for Persistent";
      description = "A thin wrapper over the heroku package. Converts the parameters parsed from\nDATABASE_URL to the concrete configuration types required by persistent.\n\nCurrently, only persistent-postgresql's PostgresConf is provided.\n";
      buildType = "Simple";
    };
    components = {
      "heroku-persistent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.heroku)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.heroku-persistent)
            (hsPkgs.persistent-postgresql)
          ];
        };
      };
    };
  }