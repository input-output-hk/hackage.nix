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
      specVersion = "0";
      identifier = {
        name = "orchid-demo";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Haskell Wiki Demo";
      description = "Haskell Wiki Demo";
      buildType = "Simple";
    };
    components = {
      exes = {
        "orchid-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.salvia)
            (hsPkgs.orchid)
            (hsPkgs.mtl)
            (hsPkgs.Pipe)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }