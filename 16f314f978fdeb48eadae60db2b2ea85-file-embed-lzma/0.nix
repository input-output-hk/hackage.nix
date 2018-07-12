{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "file-embed-lzma";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2018 Futurice, 2018 Oleg Grenrus";
        maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/file-embed-lzma";
        url = "";
        synopsis = "Use Template Haskell to embed (LZMA compressed) data.";
        description = "The @file-embed@ package let's embed file and dir contents.\n\nThis package is similar, but also compresses the embedded contents with LZMA.\nThat makes resulting object files smaller, at the cost of start up decompression.\n\nThere's also an 'embedRecursiveDir' function.";
        buildType = "Simple";
      };
      components = {
        "file-embed-lzma" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.lzma
            hsPkgs.th-lift-instances
          ];
        };
        tests = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.file-embed-lzma
              hsPkgs.bytestring
            ];
          };
        };
      };
    }