{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "PyF"; version = "0.7.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.haskell-src-exts)
          ];
        };
      tests = {
        "pyf-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.PyF)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.process)
            ];
          };
        "pyf-failure" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.process)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.hashable)
            (hsPkgs.filepath)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }