{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "NGrams";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgbailey _ gmail _ com";
        author = "Justin Bailey";
        homepage = "";
        url = "";
        synopsis = "Simple application for calculating n-grams using Google.";
        description = "An n-gram is a natural language processing technique for determining,\ngiven a list of words and a phrase, the probability that each of the\nwords given will follow in the phrase. The executable provided asks for\na phrase and a list of alternate ending words. It also asks for the type\nof n-gram to create (e.g., bi-gram, tri-gram). The probability for each\npossible phrase is then calculated using Google search results.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ngrams = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
              hsPkgs.HCL
              hsPkgs.network
              hsPkgs.regex-compat
            ];
          };
        };
      };
    }