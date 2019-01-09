{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lines-of-action"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/lines-of-action#readme";
      url = "";
      synopsis = "Lines of Action, 2-player strategy board game";
      description = "Lines of Action, 2-player strategy board game. mtl style code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          ];
        };
      };
    }