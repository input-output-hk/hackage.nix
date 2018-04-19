{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "chunks";
          version = "2007.4.18";
        };
        license = "LicenseRef-LGPL";
        copyright = "Matthew Sackman";
        maintainer = "matthew@wellquite.org";
        author = "Matthew Sackman";
        homepage = "http://www.wellquite.org/chunks/";
        url = "";
        synopsis = "Simple template library with static safety";
        description = "This library supports templates inspired by the Perl HTML::Chunks\nmodule, but this Haskell implementation checks at compile time that\nthe templates used exist and are used correctly. The templates are\ncombined within the compiled Haskell, removing the dependency on the\nexternal template file.";
        buildType = "Custom";
      };
      components = {
        chunks = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
          ];
        };
      };
    }