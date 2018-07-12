{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "geek";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/geek";
        url = "";
        synopsis = "Geek blog engine";
        description = "A dynamic blog engine, customizable with standard web technology, i.e. HTML, CSS and Javascript (JSON)";
        buildType = "Simple";
      };
      components = {
        "geek" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Glob
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.air
            hsPkgs.air-extra
            hsPkgs.air-spec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.curl
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.hack2
            hsPkgs.hack2-contrib
            hsPkgs.hack2-handler-snap-server
            hsPkgs.hspec
            hsPkgs.miku
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.pandoc
            hsPkgs.process
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.time
            hsPkgs.uuid
          ];
        };
        exes = {
          "geek" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.air
              hsPkgs.air-extra
              hsPkgs.air-spec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.hack2
              hsPkgs.hack2-contrib
              hsPkgs.hack2-handler-snap-server
              hsPkgs.hspec
              hsPkgs.miku
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.pandoc
              hsPkgs.random
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.text-icu
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
        };
      };
    }