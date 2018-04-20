{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-rrd";
          version = "0.2.1.69";
        };
        license = "BSD-3-Clause";
        copyright = "David Turner 2014";
        maintainer = "dct25-dkefo@mythic-beasts.com";
        author = "David Turner";
        homepage = "https://bitbucket.org/davecturner/ekg-rrd";
        url = "";
        synopsis = "Passes ekg statistics to rrdtool";
        description = "Simple API for passing ekg monitoring statistics to a round-robin database (RRD) using rrdtool.";
        buildType = "Simple";
      };
      components = {
        ekg-rrd = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.process
            hsPkgs.ekg-core
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.mtl
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ekg-rrd
              hsPkgs.HUnit
              hsPkgs.ekg-core
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }