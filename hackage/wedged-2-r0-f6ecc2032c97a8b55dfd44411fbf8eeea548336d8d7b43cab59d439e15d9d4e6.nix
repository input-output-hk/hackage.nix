{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wedged"; version = "2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(C) 2013,2015,2016,2018 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Wedged postcard generator.";
      description = "Wedged (C) 2013,2015,2016,2018 Claude Heiland-Allen.\n\nCopyleft: This is a free work, you can copy, distribute, and\nmodify it under the terms of the Free Art License\n<http://artlibre.org/licence/lal/en/>.\n\nInstall:\n\n> cabal sandbox init\n> cabal install wedged\n\nRun:\n\n> .cabal-sandbox/bin/wedged\n\nOutput:\n\n189 PNG files in the current working directory, totalling 33 MB.\nRun time is about 40mins (single core of a 3GHz AMD Athlon(tm) II\nX4 640 Processor).\n\nInformation:\n\nA blog post about version 0 can be found at\n<https://mathr.co.uk/blog/2015-01-16_calendar_2015_wedged.html>.\n\nVersion 1 is updated to work with GHC 8.0.1 and Diagrams 1.3.\n\nVersion 2 is updated to work with GHC 8.4.1 and Diagrams 1.4 with the\nRasterific backend.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wedged" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.MonadRandom)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.strict)
            (hsPkgs.colour)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-rasterific)
            ];
          };
        };
      };
    }