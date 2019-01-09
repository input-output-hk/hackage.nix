{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hgalib"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Kevin Ellis <ellisk@catlin.edu>";
      author = "Kevin Ellis";
      homepage = "";
      url = "";
      synopsis = "Haskell Genetic Algorithm Library";
      description = "Haskell Genetic Algorithm Library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          ];
        };
      };
    }