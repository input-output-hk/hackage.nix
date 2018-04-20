{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tasty-th";
          version = "0.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
        author = "Oscar Finnsson & Emil Nordling & Benno Fünfstück";
        homepage = "http://github.com/bennofs/tasty-th";
        url = "";
        synopsis = "Automatic tasty test case discovery using TH";
        description = "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.";
        buildType = "Simple";
      };
      components = {
        tasty-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.tasty
            hsPkgs.template-haskell
          ];
        };
      };
    }