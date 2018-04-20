{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackmanager";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "http://github.com/agrafix/hackmanager";
        url = "";
        synopsis = "Generate useful files for Haskell projects";
        description = "Simplify managing Haskell projects by generating files like README.md, .travis.yml, etc.";
        buildType = "Simple";
      };
      components = {
        hackmanager = {
          depends  = [
            hsPkgs.base
            hsPkgs.hastache
            hsPkgs.file-embed
            hsPkgs.bytestring
            hsPkgs.Glob
            hsPkgs.Cabal
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.directory
          ];
        };
        exes = {
          hackmanager = {
            depends  = [
              hsPkgs.base
              hsPkgs.hackmanager
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }