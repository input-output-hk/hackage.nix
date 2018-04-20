{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "browscap";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "davean 2012-2017";
        maintainer = "oss@xkcd.com";
        author = "davean";
        homepage = "https://oss.xkcd.com";
        url = "";
        synopsis = "A reader and interface for the Browser Capabilities Project data files.";
        description = "A reader and interface for the Browser Capabilities Project data files. Currently it uses a linear matcher which is slow.";
        buildType = "Simple";
      };
      components = {
        browscap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.lrucache
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.wreq
            hsPkgs.mtl
            hsPkgs.ini
          ];
        };
      };
    }