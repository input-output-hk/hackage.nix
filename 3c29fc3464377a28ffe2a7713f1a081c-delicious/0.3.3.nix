{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "delicious";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2009 Sigbjorn Finne.";
        maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
        author = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
        homepage = "http://galois.com";
        url = "";
        synopsis = "Accessing the del.icio.us APIs from Haskell (v2)";
        description = "Access to the del.icio.us social tagging site's API(v2) from Haskell";
        buildType = "Simple";
      };
      components = {
        "delicious" = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.feed
            hsPkgs.curl
            hsPkgs.bytestring
            hsPkgs.nano-md5
            hsPkgs.json
          ];
        };
      };
    }