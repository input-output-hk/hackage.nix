{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hslackbuilder";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unibz.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/~arossato/hslackbuilder";
      url = "";
      synopsis = "HSlackBuilder automatically generates slackBuild scripts from a cabal package";
      description = "HSlackBuilder automatically generates slackBuild scripts from a cabal package";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2slackBuild" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.unix)
            (hsPkgs.filepath)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.process)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }