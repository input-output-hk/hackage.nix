{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "nonempty-lift"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/nonempty";
      url = "";
      synopsis = "nonempty structure";
      description = "nonempty structure, parameterised by another structure";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.comonad) (hsPkgs.semigroupoids) ];
        };
      tests = {
        "laws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-classes)
            (hsPkgs.nonempty-lift)
            ];
          };
        };
      };
    }