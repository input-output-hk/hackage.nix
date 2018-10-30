{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskell-type-exts";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://code.haskell.org/haskell-type-exts";
      url = "";
      synopsis = "A type checker for Haskell/haskell-src-exts";
      description = "Haskell Types with Extensions (HTE, haskell-type-exts)\nis (an embryo of) a type checker for Haskell as embodied\nsyntactically by the haskell-src-exts (HSE) package.\nAt this point the type checker only handles a limited\nnumber of extensions, both regarding the various syntactic\nextensions handled by HSE, and the various type-level\nextensions implemented in e.g. GHC. The goal is to\ncover the full range of known Haskell extensions,\nbut every path starts with a first step.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell-src-exts)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }