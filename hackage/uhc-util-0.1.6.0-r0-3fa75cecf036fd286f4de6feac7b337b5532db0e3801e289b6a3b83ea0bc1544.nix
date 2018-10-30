{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "uhc-util";
        version = "0.1.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atze@uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc-util";
      url = "";
      synopsis = "UHC utilities";
      description = "General purpose utilities for UHC and related tools";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.fgl)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.process)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.uulib)
          (hsPkgs.time-compat)
          (hsPkgs.time)
          (hsPkgs.ListLike)
          (hsPkgs.fclabels)
          (hsPkgs.syb)
        ];
      };
    };
  }