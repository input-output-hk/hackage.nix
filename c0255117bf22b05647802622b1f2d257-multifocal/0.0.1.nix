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
      specVersion = "1.4";
      identifier = {
        name = "multifocal";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Hugo Pacheco <hpacheco@di.uminho.pt>, Alcino Cunha <alcino@di.uminho.pt>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional Two-level Transformation of XML Schemas";
      description = "Library that implements a two-level transformation (<http://dx.doi.org/10.1007/978-3-540-69611-7_19>) for creating bidirectional views of XML Schemas based on bidirectional lenses. It supports the specialization of generic queries as two-level transformation steps and the optimization of the generated lens data transformations.";
      buildType = "Simple";
    };
    components = {
      "multifocal" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.pointless-haskell)
          (hsPkgs.pointless-lenses)
          (hsPkgs.pointless-rewrite)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.syb)
          (hsPkgs.hxt)
          (hsPkgs.hxt-xpath)
          (hsPkgs.parsec)
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.HaXml)
        ];
      };
      exes = {
        "multifocal" = {
          depends  = [
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.pointless-haskell)
            (hsPkgs.pointless-lenses)
            (hsPkgs.pointless-rewrite)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.syb)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.parsec)
            (hsPkgs.array)
            (hsPkgs.pretty)
            (hsPkgs.HaXml)
          ];
        };
      };
    };
  }