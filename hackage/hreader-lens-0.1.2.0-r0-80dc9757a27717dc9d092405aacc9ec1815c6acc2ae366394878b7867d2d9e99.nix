{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hreader-lens"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "http://github.com/dredozubov/hreader-lens";
      url = "";
      synopsis = "Optics for hreader package";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.hreader)
          (hsPkgs.hset)
          (hsPkgs.lens)
          (hsPkgs.lens-action)
          (hsPkgs.profunctors)
          ];
        };
      };
    }