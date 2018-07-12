{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sentence-jp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 aiya000";
        maintainer = "aiya000.develop@gmail.com";
        author = "aiya000";
        homepage = "https://github.com/aiya000/hs-sentence-jp#readme";
        url = "";
        synopsis = "Easily generating message of japanese natural language";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "sentence-jp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mecab
            hsPkgs.random-shuffle
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }