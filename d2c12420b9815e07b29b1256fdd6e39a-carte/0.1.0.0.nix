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
      specVersion = "1.10";
      identifier = {
        name = "carte";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christophe.detroyer@gmail.com";
      author = "Christophe De Troyer";
      homepage = "https://github.com/m1dnight/carte";
      url = "";
      synopsis = "Carte: A commandline pastebin server.";
      description = "Carte allows you to host a commandline pastebin server. Just push files using netcat.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "carte" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.tuple)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }