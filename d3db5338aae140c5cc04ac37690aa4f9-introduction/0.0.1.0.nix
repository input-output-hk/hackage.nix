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
        name = "introduction";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/introduction";
      url = "";
      synopsis = "A prelude for safe new projects";
      description = "A prelude for safe new projects";
      buildType = "Simple";
    };
    components = {
      "introduction" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.string-conv)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.validity)
          (hsPkgs.validity-containers)
        ];
      };
    };
  }