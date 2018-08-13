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
        name = "haddock-test";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "Test utilities for Haddock";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haddock-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.Cabal)
          (hsPkgs.xml)
          (hsPkgs.xhtml)
          (hsPkgs.syb)
        ];
      };
    };
  }