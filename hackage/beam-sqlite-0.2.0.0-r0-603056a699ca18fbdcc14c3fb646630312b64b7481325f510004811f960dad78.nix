{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "beam-sqlite";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2017-2018 Travis Athougies";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/";
      url = "";
      synopsis = "Beam driver for SQLite";
      description = "Beam driver for the <https://sqlite.org/ SQLite> embedded database.\nSee <http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/ here>\nfor more information";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.beam-migrate)
          (hsPkgs.sqlite-simple)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.time)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.scientific)
          (hsPkgs.network-uri)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }