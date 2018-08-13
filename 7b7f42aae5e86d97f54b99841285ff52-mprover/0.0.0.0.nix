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
      specVersion = "1.6";
      identifier = {
        name = "mprover";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Procter <amp269@mail.missouri.edu>";
      author = "Adam Procter and Aaron Stump";
      homepage = "";
      url = "";
      synopsis = "Simple equational reasoning for a Haskell-ish language";
      description = "MProver is a proof checker for equational reasoning in a Haskell-like language.\nThis is an extremely preliminary release, so don't expect it to be terribly useful just yet!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.unbound)
            (hsPkgs.transformers)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }