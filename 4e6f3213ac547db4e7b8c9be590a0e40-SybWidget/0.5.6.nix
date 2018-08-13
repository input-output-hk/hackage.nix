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
      specVersion = "0";
      identifier = {
        name = "SybWidget";
        version = "0.5.6";
      };
      license = "LicenseRef-LGPL";
      copyright = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      maintainer = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      author = "Mads Lindstrøm <mads.lindstroem@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library which aids constructing generic (SYB3-based) widgets";
      description = "Basic building block for creating libraries which can generically construct widgets.\nThat is, the library cannot by it self construct any widgets, but\nmakes it easier to build libraries which can. This also means that the\nlibrary is not dependent on any particular GUI library.";
      buildType = "Simple";
    };
    components = {
      "SybWidget" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
          (hsPkgs.TypeCompose)
          (hsPkgs.containers)
        ];
      };
    };
  }