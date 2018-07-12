{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "feed-crawl";
          version = "0.1.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dhchoi@gmail.com";
        author = "Daniel Choi";
        homepage = "https://github.com/danchoi/feed-crawl";
        url = "";
        synopsis = "Utility for fetching feeds with redirect info and HTML link detection";
        description = "Utility for fetching feeds with redirect info and HTML link detection";
        buildType = "Simple";
      };
      components = {
        "feed-crawl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.conduit
            hsPkgs.connection
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.http-types
            hsPkgs.hxt
            hsPkgs.network-uri
          ];
        };
      };
    }