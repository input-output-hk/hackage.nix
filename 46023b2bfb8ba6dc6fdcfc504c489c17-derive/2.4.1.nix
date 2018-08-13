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
        name = "derive";
        version = "2.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "2006-2010, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell & Stefan O'Rear";
      homepage = "http://community.haskell.org/~ndm/derive/";
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
          (hsPkgs.haskell-src-exts)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
        ];
      };
      exes = {
        "derive" = {
          depends  = [
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }