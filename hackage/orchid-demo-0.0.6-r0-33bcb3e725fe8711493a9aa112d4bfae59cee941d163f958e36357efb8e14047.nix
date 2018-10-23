{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "orchid-demo";
        version = "0.0.6";
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
            (hsPkgs.salvia)
            (hsPkgs.salvia-extras)
            (hsPkgs.orchid)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.Pipe)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }