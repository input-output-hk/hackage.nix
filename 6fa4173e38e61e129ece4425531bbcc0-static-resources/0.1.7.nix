{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9";
        identifier = {
          name = "static-resources";
          version = "0.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mariusz@scrive.com";
        author = "Scrive";
        homepage = "";
        url = "";
        synopsis = "JavaScript and Css files concat for http optimization. Now with LESS support.";
        description = "You need to add static resources to your web page. For production you want to decrease number of files.\nFor development you need them separated. Support for distinct sets of JS, CSS and LESS files for different views.";
        buildType = "Simple";
      };
      components = {
        static-resources = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.MissingH
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.hslogger
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.old-time
          ];
        };
        tests = {
          test-static-resources = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.MissingH
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.directory
              hsPkgs.hslogger
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.static-resources
              hsPkgs.old-time
            ];
          };
        };
      };
    }