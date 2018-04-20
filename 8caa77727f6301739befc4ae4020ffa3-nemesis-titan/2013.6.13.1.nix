{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nemesis-titan";
          version = "2013.6.13.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/nemesis-titan";
        url = "";
        synopsis = "A collection of Nemesis tasks to bootstrap a Haskell project with a focus on continuous integration";
        description = "";
        buildType = "Simple";
      };
      components = {
        nemesis-titan = {
          depends  = [
            hsPkgs.base
            hsPkgs.nemesis
            hsPkgs.air
            hsPkgs.uuid
            hsPkgs.random
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.HStringTemplate
            hsPkgs.hspec
          ];
        };
      };
    }