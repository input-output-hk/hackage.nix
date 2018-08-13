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
        name = "tellbot";
        version = "0.4.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "DimitriSabadie";
      homepage = "";
      url = "";
      synopsis = "IRC tellbot";
      description = "An IRC bot that can be used to create queuing message.\nIt also offers a simple administration IRC bot interface.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tellbot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.errors)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.split)
            (hsPkgs.containers)
            (hsPkgs.bifunctors)
            (hsPkgs.time)
          ];
        };
      };
    };
  }