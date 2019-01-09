{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickbench"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright: (c) 2008-2016 Simon Michael";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "https://github.com/simonmichael/quickbench#readme";
      url = "";
      synopsis = "quick & easy benchmarking of command-line programs";
      description = "quickbench produces very simple output (elapsed seconds),\nas quickly as possible (running commands just once by default),\nand tabulates results from multiple executables.\nI find it very useful for quick and dirty, exploratory, and comparative measurements\nthat you can understand at a glance.\nPlease see the readme for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.docopt)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.tabular)
          (hsPkgs.time)
          ];
        };
      exes = {
        "quickbench" = {
          depends = [ (hsPkgs.quickbench) (hsPkgs.base) (hsPkgs.process) ];
          };
        };
      tests = {
        "quickbench-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.quickbench) ];
          };
        };
      };
    }