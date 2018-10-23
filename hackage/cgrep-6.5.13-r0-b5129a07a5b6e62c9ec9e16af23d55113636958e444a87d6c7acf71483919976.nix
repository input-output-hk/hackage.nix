{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cgrep";
        version = "6.5.13";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Nicola Bonelli <nicola@pfq.io>";
      author = "Nicola Bonelli";
      homepage = "http://awgn.github.io/cgrep/";
      url = "";
      synopsis = "Command line tool";
      description = "Cgrep: a context-aware grep for source codes";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cgrep" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.ghc-prim)
            (hsPkgs.dlist)
            (hsPkgs.ansi-terminal)
            (hsPkgs.split)
            (hsPkgs.safe)
            (hsPkgs.stringsearch)
            (hsPkgs.unordered-containers)
            (hsPkgs.regex-base)
            (hsPkgs.regex-posix)
            (hsPkgs.regex-pcre)
            (hsPkgs.either)
            (hsPkgs.mtl)
            (hsPkgs.unix-compat)
            (hsPkgs.async)
            (hsPkgs.transformers)
            (hsPkgs.process)
          ];
        };
      };
    };
  }