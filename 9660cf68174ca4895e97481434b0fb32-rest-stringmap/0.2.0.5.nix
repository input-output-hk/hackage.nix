{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rest-stringmap";
          version = "0.2.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Silk B.V.";
        maintainer = "code@silk.co";
        author = "Silk B.V.";
        homepage = "";
        url = "";
        synopsis = "Maps with stringy keys that can be transcoded to JSON and XML.";
        description = "Maps with stringy keys that can be transcoded to JSON and XML.";
        buildType = "Simple";
      };
      components = {
        rest-stringmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.hxt
            hsPkgs.json-schema
            hsPkgs.tostring
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.tagged;
        };
      };
    }