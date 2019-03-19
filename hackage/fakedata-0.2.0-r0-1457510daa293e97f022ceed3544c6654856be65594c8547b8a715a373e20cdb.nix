{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "fakedata"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/fakedata#readme";
      url = "";
      synopsis = "Library for producing fake data";
      description = "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "fakedata-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.fakedata)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.random)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }