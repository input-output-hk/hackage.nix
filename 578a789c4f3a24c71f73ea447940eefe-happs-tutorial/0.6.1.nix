{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "happs-tutorial";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "2008 Thomas Hartman";
        maintainer = "thomashartman1 at gmail dot com";
        author = "Thomas Hartman, Eelco Lempsink";
        homepage = "";
        url = "";
        synopsis = "A HAppS Tutorial that is is own demo";
        description = "A nice way to learn how to build web sites with HAppS";
        buildType = "Simple";
      };
      components = {
        exes = {
          happs-tutorial = {
            depends  = [
              hsPkgs.base
              hsPkgs.HStringTemplate
              hsPkgs.HStringTemplateHelpers
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.HAppS-Server
              hsPkgs.HAppS-Data
              hsPkgs.HAppS-State
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.pureMD5
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hscolour
              hsPkgs.HTTP
              hsPkgs.safe
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.HAppSHelpers
              hsPkgs.DebugTraceHelpers
            ];
          };
        };
      };
    }