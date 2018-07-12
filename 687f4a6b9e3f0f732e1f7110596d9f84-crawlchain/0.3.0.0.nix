{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "crawlchain";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "7a3ggptwts@snkmail.com";
        author = "Axel Mannhardt";
        homepage = "";
        url = "";
        synopsis = "Simulation user crawl paths";
        description = "Library for simulating user crawl paths (trees) with selectors - takes an initial action and a chain of processing actions to crawl a tree (lazy, depth first) searching for a matching branch.";
        buildType = "Simple";
      };
      components = {
        "crawlchain" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.http-streams
            hsPkgs.network-uri
            hsPkgs.split
            hsPkgs.tagsoup
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          "html-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crawlchain
              hsPkgs.split
              hsPkgs.tagsoup
            ];
          };
          "crawling-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crawlchain
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.http-streams
              hsPkgs.network-uri
              hsPkgs.text
              hsPkgs.time
              hsPkgs.tagsoup
              hsPkgs.split
            ];
          };
        };
      };
    }