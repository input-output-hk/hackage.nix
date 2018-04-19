{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-normal";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/text-normal.git";
        url = "";
        synopsis = "Unicode-normalized text";
        description = "This package provides types and functions for normalizing and comparing\n@Text@ values according to Unicode equivalence.\n\nAn in-depth explanation of the forms of Unicode equivalence can be found\n<http://en.wikipedia.org/wiki/Unicode_equivalence on Wikipedia>.\n\nThe modules in this package are named and function according to the four methods of\nUnicode normalization. The @Normal@ types exported by each are purposefully\nnot compatible with functions exported by the other modules.\n\nThis package depends on @text-icu@, which means it requires that the @icu@\nC library is installed.";
        buildType = "Simple";
      };
      components = {
        text-normal = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.text
            hsPkgs.text-icu
          ];
        };
      };
    }