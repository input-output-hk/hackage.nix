{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Codec-Compression-LZF";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@cse.unsw.edu.au>";
        author = "Einar Karttunen";
        homepage = "http://www.cs.helsinki.fi/u/ekarttun/Codec-Compression-LZF/";
        url = "";
        synopsis = "LZF compression bindings.";
        description = "A Haskell binding to the liblzf by Marc Lehmann. LZF is a fast\ncompression algorithm sacrifising compression quality for an extra\nbit of speed. The tiny library is contained in the source and\nstatically linked in the Haskell library resulting in no external\ndependencies.  Exposed-modules: Codec.Compression.LZF";
        buildType = "Custom";
      };
      components = {
        Codec-Compression-LZF = {
          depends  = [ hsPkgs.base ];
        };
      };
    }