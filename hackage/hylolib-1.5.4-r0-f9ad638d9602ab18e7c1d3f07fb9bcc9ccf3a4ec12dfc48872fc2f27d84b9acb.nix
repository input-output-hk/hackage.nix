{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hylolib"; version = "1.5.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Daniel Gorin";
      homepage = "";
      url = "";
      synopsis = "Tools for hybrid logics related programs";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.uniplate)
          ];
        };
      };
    }