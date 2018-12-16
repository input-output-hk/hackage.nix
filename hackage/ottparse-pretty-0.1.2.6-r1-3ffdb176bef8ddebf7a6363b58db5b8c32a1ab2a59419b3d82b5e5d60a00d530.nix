{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ottparse-pretty";
        version = "0.1.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Pretty-printer for Ott parse trees";
      description = "Ott (<http://www.cl.cam.ac.uk/~pes20/ott/>) is a tool for\nwriting formal definitions of programming\nlanguages and calculi.  Often the Ott grammars\none defines end up being ambiguous, and Ott\nsignals its displeasure by spewing forth several\nmassive parse trees in a format requiring\nformidable patience to read.  Finding the slight\ndifferences between two such parse trees is an\nexercise in seizure-inducing tedium.\n\nTo the rescue comes ottparse-pretty!  Simply\npaste in each parse and it is shown to you in a\nnicely formatted tree form with all the extra\nmeaningless cruft removed.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ottparse-pretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }