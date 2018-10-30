{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cmathml3";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 The University of Auckland";
      maintainer = "ak.miller@auckland.ac.nz";
      author = "Andrew Miller";
      homepage = "";
      url = "";
      synopsis = "Data model, parser, serialiser and transformations for Content MathML 3";
      description = "Data model, parser, serialiser and basic transformations for working with Content MathML 3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.hxt)
          (hsPkgs.base)
          (hsPkgs.arrowapply-utils)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.url)
          (hsPkgs.array)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "mathtest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }