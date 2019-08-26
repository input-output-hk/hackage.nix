{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chart-cli"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Ilya V. Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/chart-cli#readme";
      url = "";
      synopsis = "Command-line utility to draw charts from input data easily";
      description = "Please see the README on GitHub at <https://github.com/portnov/chart-cli#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "chart" = {
          depends = [
            (hsPkgs.Chart)
            (hsPkgs.Chart-cairo)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.colour)
            (hsPkgs.data-default-class)
            (hsPkgs.dates)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }