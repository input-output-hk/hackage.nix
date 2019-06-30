{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "more-containers"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2017-2019 Matthieu Monsch";
      maintainer = "mtth@apache.org";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/more-containers";
      url = "";
      synopsis = "A few more collections";
      description = "https://github.com/mtth/more-containers";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "more-containers-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.more-containers)
            ];
          };
        };
      };
    }