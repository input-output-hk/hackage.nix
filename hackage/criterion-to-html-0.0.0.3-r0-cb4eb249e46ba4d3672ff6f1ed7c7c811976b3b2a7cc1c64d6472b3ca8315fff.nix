{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "criterion-to-html";
        version = "0.0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/criterion-to-html";
      url = "";
      synopsis = "Convert criterion output to HTML reports";
      description = "A program to convert criterion output (a CSV file) to an HTML which has some\nquick and dirty plots to compare the results. To generate the CSV file, run\nyour criterion benchmark using the @-u@ flag:\n\n> some-criterion-benchmark -u results.csv\n\nYou can then convert the CSV results to some simple HTML plots using this\nprogram:\n\n> criterion-to-html results.csv\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "criterion-to-html" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }