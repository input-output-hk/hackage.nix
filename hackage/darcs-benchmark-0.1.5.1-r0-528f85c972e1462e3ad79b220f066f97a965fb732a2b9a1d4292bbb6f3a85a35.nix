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
        name = "darcs-benchmark";
        version = "0.1.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Petr Rockai <me@mornfall.net>";
      maintainer = "Petr Rockai <me@mornfall.net>";
      author = "Eric Kow <kowey@darcs.net>, Simon Michael <simon@joyful.com>\nand Petr Rockai <me@mornfall.net>";
      homepage = "http://wiki.darcs.net/Development/Benchmarks";
      url = "";
      synopsis = "Comparative benchmark suite for darcs.";
      description = "A simple tool to compare performance of different Darcs 2.x\ninstances.  The program can download a set of test repositories,\nor you can provide your own. Run the program without parameters to\nget help.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "darcs-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.tabular)
            (hsPkgs.time)
            (hsPkgs.regex-posix)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.json)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.tar)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }