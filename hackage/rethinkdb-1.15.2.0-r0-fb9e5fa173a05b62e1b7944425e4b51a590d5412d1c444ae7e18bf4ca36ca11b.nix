{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rethinkdb";
        version = "1.15.2.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Etienne Laurin <etienne@atnnn.com>";
      author = "Etienne Laurin";
      homepage = "http://github.com/atnnn/haskell-rethinkdb";
      url = "";
      synopsis = "A driver for RethinkDB 1.15";
      description = "A driver for the RethinkDB database server";
      buildType = "Simple";
    };
    components = {
      "rethinkdb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.binary)
          (hsPkgs.scientific)
          (hsPkgs.base64-bytestring)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.rethinkdb)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.async)
          ];
        };
      };
    };
  }