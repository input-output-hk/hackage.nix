{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stemmer-german";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nlp@mcohrs.eu";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "Extract the stem of a German inflected word form.";
        description = "This package implements a stemmer for German, using the CISTEM algorithm. For a description of the algorithm and a comparison with other stemmers see:\n\nLeonie Weißweiler, Alexander Fraser (2017). Developing a Stemmer for German Based on a Comparative Analysis of Publicly Available Stemmers. In Proceedings of the German Society for Computational Linguistics and Language Technology (GSCL)";
        buildType = "Simple";
      };
      components = {
        stemmer-german = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }