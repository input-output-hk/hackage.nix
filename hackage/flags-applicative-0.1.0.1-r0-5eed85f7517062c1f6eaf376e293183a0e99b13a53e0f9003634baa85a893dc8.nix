{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flags-applicative"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthieu Monsch";
      maintainer = "mtth@apache.org";
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
          (hsPkgs.casing)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          ];
        };
      tests = {
        "flags-applicative-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.flags-applicative)
            ];
          };
        };
      };
    }