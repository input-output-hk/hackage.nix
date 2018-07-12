{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tokenize";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "grzegorz.chrupala@gmail.com";
        author = "Grzegorz Chrupała";
        homepage = "https://bitbucket.org/gchrupala/lingo/overview";
        url = "";
        synopsis = "Simple tokenizer for English text.";
        description = "Simple tokenizer for English text.";
        buildType = "Simple";
      };
      components = {
        "tokenize" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.text
          ];
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.tokenize
              hsPkgs.criterion
              hsPkgs.filepath
              hsPkgs.text
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.split
              hsPkgs.bytestring
            ];
          };
        };
      };
    }