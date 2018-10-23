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
        name = "amazon-emailer-client-snap";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/amazon-emailer-client-snap";
      url = "";
      synopsis = "Client library for amazon-emailer daemon";
      description = "";
      buildType = "Simple";
    };
    components = {
      "amazon-emailer-client-snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.snaplet-postgresql-simple)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
    };
  }