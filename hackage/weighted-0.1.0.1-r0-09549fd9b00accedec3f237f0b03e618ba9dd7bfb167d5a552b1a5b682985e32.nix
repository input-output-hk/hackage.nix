{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "weighted"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/weighted";
      url = "";
      synopsis = "Writer monad which uses semiring constraint";
      description = "Writer monad which uses semiring constraint";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.semiring-num) (hsPkgs.mtl) ];
        };
      };
    }