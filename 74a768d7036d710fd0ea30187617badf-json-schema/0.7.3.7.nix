{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "json-schema";
          version = "0.7.3.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "";
        url = "";
        synopsis = "Types and type classes for defining JSON schemas.";
        description = "Types and type classes for defining JSON schemas.\n\n/Documentation/\n\nSee <https://github.com/silkapp/json-schema/blob/master/README.md>\n";
        buildType = "Simple";
      };
      components = {
        json-schema = {
          depends  = ([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.generic-aeson
            hsPkgs.generic-deriving
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
        tests = {
          json-schema-generic-aeson-tests = {
            depends  = ([
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-utils
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.generic-aeson
              hsPkgs.json-schema
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.vector
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.tagged) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
          };
        };
      };
    }