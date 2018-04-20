{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste-inst = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haste-perch";
          version = "0.1.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "https://github.com/agocorona/haste-perch";
        url = "";
        synopsis = "Create dynamic HTML in the browser using declarative notation";
        description = "see the description at the homepage.";
        buildType = "Simple";
      };
      components = {
        haste-perch = {
          depends  = if _flags.haste-inst
            then [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.haste-lib
            ]
            else [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.haste-compiler
            ];
        };
      };
    }