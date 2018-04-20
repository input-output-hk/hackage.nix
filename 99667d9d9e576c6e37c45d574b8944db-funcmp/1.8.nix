{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "funcmp";
          version = "1.8";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Meik Hellmund, Ralf Hinze, Joachim Korittky,\nMarco Kuhlmann, Ferenc Wágner, Peter Simons,\nRobin Green";
        homepage = "https://github.com/peti/funcmp";
        url = "";
        synopsis = "Functional MetaPost";
        description = "Functional MetaPost is a Haskell frontend to the\nMetaPost language by John Hobby. Users write their\ngraphics as Haskell programs, which then emit MetaPost\ncode that can be compiled into encapsulated PostScript\nfiles and smoothly included into e.g. LaTeX.\n\nA collection of useful examples how to use Functional\nMetaPost can be found in the user's manual at\n<http://download.savannah.nongnu.org/releases/funcmp/Manual_eng.ps>. The\ndocument doesn't offer very much detail in terms of\nexplanations, but the code samples are quite helpful.\n\nFurther documentation can be found in the original\nthesis that describes the implementation. The text is\navailable in German at\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis.ps> and in\nEnglish at\n<http://download.savannah.nongnu.org/releases/funcmp/Thesis_eng.ps>.\n\nLast but not least, there is a tutorial that offers many\nhelpful examples available in German at\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial.ps> and in\nEnglish at\n<http://download.savannah.nongnu.org/releases/funcmp/Tutorial_eng.ps>.";
        buildType = "Simple";
      };
      components = {
        funcmp = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
          ];
        };
      };
    }