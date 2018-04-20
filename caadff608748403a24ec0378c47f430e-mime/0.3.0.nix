{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "mime";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2008 Galois Inc.";
        maintainer = "sof@galois.com";
        author = "Galois Inc.";
        homepage = "";
        url = "";
        synopsis = "Working with MIME types.";
        description = "Working with MIME types.";
        buildType = "Simple";
      };
      components = {
        mime = {
          depends  = [ hsPkgs.base ];
        };
      };
    }