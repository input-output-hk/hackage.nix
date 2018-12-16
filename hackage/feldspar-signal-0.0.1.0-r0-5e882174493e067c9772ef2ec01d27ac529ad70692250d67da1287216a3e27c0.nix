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
      specVersion = "1.10";
      identifier = {
        name = "feldspar-signal";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "mararon";
      homepage = "https://github.com/markus-git/feldspar-signal";
      url = "";
      synopsis = "Signal Processing extension for Feldspar";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mainland-pretty)
          (hsPkgs.base-compat)
          (hsPkgs.imperative-edsl)
          (hsPkgs.monadic-edsl-priv)
          (hsPkgs.feldspar-language)
          (hsPkgs.feldspar-compiler)
          (hsPkgs.feldspar-compiler-shim)
        ];
      };
    };
  }