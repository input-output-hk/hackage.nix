{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "zoom"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iand675@gmail.com";
      author = "Ian Duncan";
      homepage = "github.com/iand675/Zoom";
      url = "";
      synopsis = "A rake/thor-like task runner written in Haskell";
      description = "See documentation on the project homepage for more information";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.hamlet)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          ];
        };
      exes = {
        "zoom" = {
          depends = [
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.hint)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }