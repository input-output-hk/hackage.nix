{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-cors";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Oliver Charles (c) 2013";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/snap-cors";
        url = "";
        synopsis = "Add CORS headers to Snap applications";
        description = "Add CORS (cross-origin resource sharing) headers to Snap applications. This\nenables web applications running on other domains to make requests against\nanother application.\n\nCurrently this package provides support for setting the\n@Access-Control-Allow-Origin@ and @Access-Control-Allow-Credentials@ headers,\nit does not yet do pre-flighting. If you need this, please open an issue on\nGithub and I'll fix it ASAP (otherwise I will add this feature as time permits).";
        buildType = "Simple";
      };
      components = {
        snap-cors = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }