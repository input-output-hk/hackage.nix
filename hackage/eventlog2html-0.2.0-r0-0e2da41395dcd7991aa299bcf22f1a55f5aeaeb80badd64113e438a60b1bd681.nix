{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "eventlog2html"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010,2011,2015,2017,2018  Claude Heiland-Allen 2019 Matthew Pickering";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering, David Binder, Claude Heiland-Allen";
      homepage = "https://mpickering.github.io/eventlog2html";
      url = "";
      synopsis = "Visualise an eventlog";
      description = "eventlog2html is a library for visualising eventlogs.\nAt the moment, the intended use is to visualise eventlogs\nwhich have heap profiling events, as a replacement to hp2ps\nand hp2pretty.\neventlog2html creates a static webpage which contains\na collection of different interactive charts for analysing\nheap usage. Trace events are displayed on the chart and\nthe charts can be zoomed, scrolled and filtered to give\na more exploratory feel to heap profile analysis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.ghc-events)
          (hsPkgs.hashtables)
          (hsPkgs.hvega)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "eventlog2html" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.eventlog2html)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }