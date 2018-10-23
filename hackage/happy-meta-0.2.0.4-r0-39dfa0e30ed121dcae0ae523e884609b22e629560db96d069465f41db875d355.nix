{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "happy-meta";
        version = "0.2.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregard";
      homepage = "";
      url = "";
      synopsis = "Quasi-quoter for Happy parsers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "happy-meta" = {
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }