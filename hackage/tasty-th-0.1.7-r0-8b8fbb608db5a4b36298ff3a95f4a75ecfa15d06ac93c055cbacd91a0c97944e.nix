{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tasty-th"; version = "0.1.7"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.tasty)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "tasty-th-tests" = {
          depends = [ (hsPkgs.base) (hsPkgs.tasty-hunit) (hsPkgs.tasty-th) ];
          };
        };
      };
    }