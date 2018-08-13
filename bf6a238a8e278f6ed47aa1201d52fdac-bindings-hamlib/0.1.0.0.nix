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
        name = "bindings-hamlib";
        version = "0.1.0.0";
      };
      license = "LGPL-2.1-only";
      copyright = "(c) 2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/relrod/hamlib-haskell";
      url = "";
      synopsis = "Hamlib bindings for Haskell";
      description = "Haskell FFI bindings for hamlib";
      buildType = "Simple";
    };
    components = {
      "bindings-hamlib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."hamlib") ];
      };
      exes = {
        "hamlib-hs-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-hamlib)
          ];
        };
      };
    };
  }