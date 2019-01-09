{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yx"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Matthieu Monsch";
      maintainer = "matthieu.monsch@gmail.com";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/yx";
      url = "";
      synopsis = "Row-major coordinates";
      description = "https://github.com/mtth/yx";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.bytestring) ];
        };
      tests = {
        "yx-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.yx)
            ];
          };
        };
      };
    }