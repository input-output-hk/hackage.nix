{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "log4hs"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Version Cloud";
      maintainer = "Jorah Gao <gqk007@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A python logging style log library";
      description = "Please see the README";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "log4hs-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.log4hs)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }