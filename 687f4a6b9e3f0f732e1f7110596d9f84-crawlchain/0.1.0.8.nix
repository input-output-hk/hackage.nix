{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "crawlchain";
          version = "0.1.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "7a3ggptwts@snkmail.com";
        author = "Axel Mannhardt";
        homepage = "";
        url = "";
        synopsis = "Library for simulating user crawl paths (trees) with selectors.";
        description = "Warning: experimental";
        buildType = "Simple";
      };
      components = {
        crawlchain = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.HTTP
            hsPkgs.network-uri
            hsPkgs.split
            hsPkgs.tagsoup
            hsPkgs.time
          ];
        };
      };
    }