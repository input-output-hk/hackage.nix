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
      specVersion = "1.8";
      identifier = {
        name = "derive";
        version = "2.5.25";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/derive#readme";
      url = "";
      synopsis = "A program and library to derive instances for data types";
      description = "Data.Derive is a library and a tool for deriving instances for Haskell programs.\nIt is designed to work with custom derivations, SYB and Template Haskell mechanisms.\nThe tool requires GHC, but the generated code is portable to all compilers.\nWe see this tool as a competitor to DrIFT.";
      buildType = "Simple";
    };
    components = {
      "derive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
        ];
      };
      exes = {
        "derive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.derive)
          ];
        };
      };
    };
  }