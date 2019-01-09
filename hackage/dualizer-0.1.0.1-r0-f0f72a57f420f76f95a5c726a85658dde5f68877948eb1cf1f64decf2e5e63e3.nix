{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dualizer"; version = "0.1.0.1"; };
      license = "LicenseRef-AGPL";
      copyright = "2017 Greg Pfeil";
      maintainer = "greg@technomadic.org";
      author = "Greg Pfeil";
      homepage = "https://github.com/sellout/dualizer#readme";
      url = "";
      synopsis = "Automatically generate dual constructions.";
      description = "A library for defining duals automatically, as well as\nlabeling duals in existing packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          ];
        };
      };
    }