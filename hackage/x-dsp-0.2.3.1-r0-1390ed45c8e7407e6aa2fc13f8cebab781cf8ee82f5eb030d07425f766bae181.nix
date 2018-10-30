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
        name = "x-dsp";
        version = "0.2.3.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "http://jwlato.webfactional.com/haskell/x-dsp";
      url = "";
      synopsis = "A embedded DSL for manipulating DSP languages in Haskell";
      description = "Provides a tagless-final language family for manipulating\naudio programming languages (e.g. Csound, Supercollider).\nA CSound backend is provided, however the language is\ncompletely open so others can be added by users.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monads-tf)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.type-level)
        ];
      };
    };
  }