{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twitter-types-lens";
          version = "0.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "taka@himura.jp";
        author = "Takahiro HIMURA";
        homepage = "https://github.com/himura/twitter-types-lens";
        url = "";
        synopsis = "Twitter JSON types (lens powered)";
        description = "";
        buildType = "Simple";
      };
      components = {
        twitter-types-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.twitter-types
          ];
        };
      };
    }