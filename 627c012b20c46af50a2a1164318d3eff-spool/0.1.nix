{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "spool";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Convert between ByteString and Vector.Storable without copying";
        description = "This library allows conversion between the types from @Data.ByteString@\n(package @bytestring@) and @Data.Vector.Storable@ (package @vector@) without\ncopying the underlying data.  This is useful, for example, when @ByteString@\nIO produces or consumes vectors of numbers in native byte order.\n\nThis trick relies on the fact that @ByteString@ and @Vector@ use their\nrespective @ForeignPtr@s in compatible ways.  It works with\n@bytestring-0.9.1.10@ and @vector-0.9@ on GHC 7.0.  It may break with future\nreleases of these packages.  Depending on this library should be seen as a\nway to document and standardize an existing hack, and not as an absolute\nguarantee of correct behavior.";
        buildType = "Simple";
      };
      components = {
        "spool" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
      };
    }