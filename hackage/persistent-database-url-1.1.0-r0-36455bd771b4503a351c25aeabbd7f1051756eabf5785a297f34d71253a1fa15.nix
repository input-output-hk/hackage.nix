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
        name = "persistent-database-url";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Ferris <jferris@thoughtbot.com>";
      author = "Joe Ferris <jferris@thoughtbot.com>";
      homepage = "";
      url = "";
      synopsis = "Parse DATABASE_URL into configuration types for Persistent";
      description = "Converts the parameters parsed from a database url to the concrete\nconfiguration types required by persistent.\n\nCurrently, only persistent-postgresql's PostgresConf is provided.\n";
      buildType = "Simple";
    };
    components = {
      "persistent-database-url" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.uri-bytestring)
          (hsPkgs.fail)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.persistent-database-url)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
    };
  }