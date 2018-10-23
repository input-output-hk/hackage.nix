{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "concraft";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/concraft";
      url = "";
      synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
      description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
      buildType = "Simple";
    };
    components = {
      "concraft" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.vector)
          (hsPkgs.crf-chain1-constrained)
          (hsPkgs.monad-ox)
          (hsPkgs.sgd)
          (hsPkgs.tagset-positional)
          (hsPkgs.crf-chain2-generic)
        ];
      };
      exes = {
        "concraft-guess" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
        "concraft-disamb" = {
          depends  = [ (hsPkgs.cmdargs) ];
        };
      };
    };
  }