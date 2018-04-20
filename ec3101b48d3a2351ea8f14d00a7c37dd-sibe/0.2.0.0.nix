{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sibe";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Mahdi Dibaiee";
        maintainer = "mdibaiee@aol.com";
        author = "Mahdi Dibaiee";
        homepage = "https://github.com/mdibaiee/sibe";
        url = "";
        synopsis = "Machine Learning algorithms";
        description = "Haskell Machine Learning";
        buildType = "Simple";
      };
      components = {
        sibe = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.random
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.regex-base
            hsPkgs.regex-pcre
            hsPkgs.text
            hsPkgs.stemmer
            hsPkgs.vector
            hsPkgs.random-shuffle
            hsPkgs.data-default-class
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.lens
          ];
        };
        exes = {
          example-xor = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
              hsPkgs.data-default-class
            ];
          };
          example-word2vec = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
              hsPkgs.data-default-class
              hsPkgs.split
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.random
            ];
          };
          example-424 = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
              hsPkgs.data-default-class
            ];
          };
          example-notmnist = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
              hsPkgs.directory
              hsPkgs.JuicyPixels
              hsPkgs.vector
              hsPkgs.random
              hsPkgs.random-shuffle
              hsPkgs.data-default-class
              hsPkgs.Chart
              hsPkgs.Chart-cairo
            ];
          };
          example-naivebayes-doc-classifier = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
              hsPkgs.containers
              hsPkgs.split
            ];
          };
        };
        tests = {
          sibe-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.sibe
              hsPkgs.hmatrix
            ];
          };
        };
      };
    }