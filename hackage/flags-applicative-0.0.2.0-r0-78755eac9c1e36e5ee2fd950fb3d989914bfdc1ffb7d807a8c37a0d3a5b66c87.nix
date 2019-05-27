{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flags-applicative"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/flags-applicative";
      url = "";
      synopsis = "Applicative flag parsing";
      description = "https://github.com/mtth/flags-applicative";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          ];
        };
      exes = {
        "simple-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.flags-applicative) ];
          };
        };
      tests = {
        "flags-applicative-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.flags-applicative)
            ];
          };
        };
      };
    }