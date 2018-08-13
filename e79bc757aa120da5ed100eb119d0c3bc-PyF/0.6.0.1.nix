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
        name = "PyF";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guillaum.bouchard@gmail.com";
      author = "Guillaume Bouchard";
      homepage = "";
      url = "";
      synopsis = "Quasiquotations for a python like interpolated string formater";
      description = "Quasiquotations for a python like interpolated string formater.";
      buildType = "Simple";
    };
    components = {
      "PyF" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.formatting)
          (hsPkgs.haskell-src-meta)
        ];
      };
      tests = {
        "pyf-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.PyF)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.formatting)
            (hsPkgs.process)
          ];
          libs = [ (pkgs.python3) ];
        };
      };
    };
  }