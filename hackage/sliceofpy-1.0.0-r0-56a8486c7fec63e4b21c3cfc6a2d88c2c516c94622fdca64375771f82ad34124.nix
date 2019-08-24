{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sliceofpy"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Interos, Inc.";
      maintainer = "jevans@interos.net";
      author = "John Evans";
      homepage = "https://github.com/interosinc/sliceofpy#readme";
      url = "";
      synopsis = "Python-ish slicing traversals for Haskell.";
      description = "README at <https://github.com/interosinc/sliceofpy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      exes = {
        "gen-sliceofpy-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.process)
            (hsPkgs.sliceofpy)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "sliceofpy-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.process)
            (hsPkgs.sliceofpy)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }