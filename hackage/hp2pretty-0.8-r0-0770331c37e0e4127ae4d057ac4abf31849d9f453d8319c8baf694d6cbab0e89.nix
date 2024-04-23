{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hp2pretty"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010,2011,2015,2017  Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/hp2pretty";
      url = "";
      synopsis = "generate pretty graphs from heap profiles";
      description = "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with\nthe aims of being maintainable, with more flexible output, and\nmore beautiful output.  Currently hp2pretty outputs Scalable\nVector Graphics (SVG) only, though PostScript (PS) is planned.\nNot all of hp2ps' options are implemented yet in hp2pretty.\n\nIn hp2pretty-0.8 output filtering and sorting flags are added,\nas well as low-ink pattern fills for printing:\n\n> hp2pretty --trace=1     *.hp\n> hp2pretty --bands=15    *.hp\n> hp2pretty --sort=size   *.hp\n> hp2pretty --sort=stddev *.hp\n> hp2pretty --sort=name   *.hp\n> hp2pretty --reverse     *.hp\n> hp2pretty --pattern     *.hp\n\nIn hp2pretty-0.7 a parsing bug is fixed.\n\nIn hp2pretty-0.6 ByteString is replaced by Text, fixing bugs\nwith Unicode.\n\nIn hp2pretty-0.5 using attoparsec and floatshow internally\nshould give a healthy speedup.\n\nIn hp2pretty-0.4 usage changed since the previous release:\n\n> hp2pretty *.hp\n> hp2pretty --uniform-scale=time   *.hp\n> hp2pretty --uniform-scale=memory *.hp\n> hp2pretty --uniform-scale=both   *.hp\n\nColours also changed: now they are based on a hash of the\ncost label, which should make colours have stable semantics\nacross program runs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hp2pretty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."floatshow" or (errorHandler.buildDepError "floatshow"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }