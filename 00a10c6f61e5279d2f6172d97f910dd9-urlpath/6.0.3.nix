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
        name = "urlpath";
        version = "6.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Painfully simple URL deployment.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "urlpath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec-uri)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-control-aligned)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.path-extra)
          (hsPkgs.resourcet)
          (hsPkgs.split)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
        ];
      };
    };
  }