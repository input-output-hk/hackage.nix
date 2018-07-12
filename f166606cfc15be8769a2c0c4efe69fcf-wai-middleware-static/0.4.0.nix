{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-middleware-static";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Andrew Farmer";
        maintainer = "Andrew Farmer <anfarmer@ku.edu>";
        author = "Andrew Farmer <anfarmer@ku.edu>";
        homepage = "https://github.com/ku-fpg/scotty";
        url = "";
        synopsis = "WAI middleware that intercepts requests to static files.";
        description = "WAI middleware that intercepts requests to static files and serves them\nif they exist.\n\n[WAI] <http://hackage.haskell.org/package/wai>";
        buildType = "Simple";
      };
      components = {
        "wai-middleware-static" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.wai
          ];
        };
      };
    }