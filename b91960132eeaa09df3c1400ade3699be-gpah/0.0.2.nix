{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gpah";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Nikolaos Bezirgiannis, Johan Jeuring, Sean Leather";
      maintainer = "n.bezirgiannis@students.uu.nl";
      author = "Nikolaos Bezirgiannis, Johan Jeuring, Sean Leather";
      homepage = "";
      url = "";
      synopsis = "Generic Programming Use in Hackage";
      description = "Generic Programming Use in Hackage:";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gpah" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.uniplate)
            (hsPkgs.process)
            (hsPkgs.csv)
            (hsPkgs.hint)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.uu-parsinglib)
          ];
        };
      };
    };
  }