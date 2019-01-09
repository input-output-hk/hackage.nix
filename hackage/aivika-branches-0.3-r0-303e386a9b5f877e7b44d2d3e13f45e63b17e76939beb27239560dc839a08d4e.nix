{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "aivika-branches"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://www.aivikasoft.com";
      url = "";
      synopsis = "Nested discrete event simulation module for the Aivika library";
      description = "This package extends the aivika-transformers [1] library and allows creating branches to run\nnested simulations within simulation. The branches are very cheap but still not free.\n\nTo run the simulation experiment by the Monte-Carlo method, you can use additional packages.\nThey will allow you to save the simulation results in SQL database and then generate a report\nconsisting of HTML pages with charts, histograms, links to CSV tables, summary statistics and so on.\nPlease consult the AivikaSoft [2] website for more details.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n\n\\[2] <http://www.aivikasoft.com>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.mwc-random)
          (hsPkgs.aivika)
          (hsPkgs.aivika-transformers)
          ];
        };
      };
    }