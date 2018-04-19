{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      memory-safe = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quicklz";
          version = "1.5.0.11";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "mad.one@gmail.com";
        author = "Austin Seipp";
        homepage = "http://github.com/thoughtpolice/hs-quicklz";
        url = "";
        synopsis = "QuickLZ compression for ByteStrings";
        description = "This package provides a high level binding to the QuickLZ\ncompression library for @ByteStrings@, under the GPLv2\nlicense. QuickLZ is fast and compresses very well. Check out the\nhome page: <http://quicklz.com>\n\nThis package includes the QuickLZ 1.5.0 source code, at\ncompression level 1 and streaming mode disabled.\n\nThe versioning scheme for this package is unusual. QuickLZ tries to\nbe as fast as possible, and will break backwards compatibility to\nachieve it in newer versions. This versioning scheme reflects the\nQuickLZ versioning scheme: the first three digits of version w.x.y.z\nare the quicklz version, with the 'z' component (and any further\nneeded ones) being updates to this package, not quicklz itself.";
        buildType = "Simple";
      };
      components = {
        quicklz = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.quicklz
            ];
          };
        };
      };
    }