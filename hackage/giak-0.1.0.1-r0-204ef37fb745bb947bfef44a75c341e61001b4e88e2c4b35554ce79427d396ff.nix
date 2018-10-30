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
      specVersion = "1.10";
      identifier = {
        name = "giak";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "http://github.com/nmattia/giak";
      url = "";
      synopsis = "Fuzzy finder for cabal executables";
      description = "Simple program that looks for executables in your .cabal and presents you\nwith a list. You can then complete the command you need, or simply hit enter\nwhen the fuzzy finder narrowed the list down to what you need.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "giak" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.async)
            (hsPkgs.filepath)
            (hsPkgs.extra)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.semigroups)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.wybor)
          ];
        };
      };
    };
  }