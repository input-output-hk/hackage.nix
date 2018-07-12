{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lazy-hash-cache";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) jsagemue \$ uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "";
        url = "";
        synopsis = "Storing computed values for re-use when the same program runs again.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "lazy-hash-cache" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lazy-hash
            hsPkgs.hashable
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.temporary
            hsPkgs.data-default-class
            hsPkgs.microlens
            hsPkgs.microlens-th
          ];
        };
      };
    }