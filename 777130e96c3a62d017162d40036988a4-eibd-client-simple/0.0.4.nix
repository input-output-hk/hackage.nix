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
        name = "eibd-client-simple";
        version = "0.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) Ole KrÃ¼ger 2014";
      maintainer = "ole.krueger@campus.tu-berlin.de";
      author = "Ole KrÃ¼ger";
      homepage = "";
      url = "";
      synopsis = "EIBd Client";
      description = "EIBd Client wrapper for Haskell.";
      buildType = "Simple";
    };
    components = {
      "eibd-client-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
        libs = [ (pkgs."eibclient") ];
      };
    };
  }