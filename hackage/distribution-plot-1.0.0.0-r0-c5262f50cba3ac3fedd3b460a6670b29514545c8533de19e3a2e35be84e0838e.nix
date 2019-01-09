{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distribution-plot"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "romain.edelmann@gmail.com";
      author = "Romain Edelmann";
      homepage = "https://github.com/redelmann/haskell-distribution-plot";
      url = "";
      synopsis = "Easily plot distributions from the distribution package..";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.colour)
          (hsPkgs.data-default-class)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.distribution)
          ];
        };
      };
    }