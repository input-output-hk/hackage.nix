{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "uhc-light"; version = "1.1.9.4"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc";
      url = "";
      synopsis = "Part of UHC packaged as cabal/hackage installable library";
      description = "A 'light' variant of UHC including only an API and executables for compiling to Core representation (uhcl) and running CoreRun (uhcr). This version is just to test the infrastructure. Later versions will provide a fleshing out of the API and completion of the now rudimentary platform independent (Haskell) interpreted running etc..";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.fgl)
          (hsPkgs.uulib)
          (hsPkgs.hashable)
          (hsPkgs.uhc-util)
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.primitive)
          (hsPkgs.binary)
          (hsPkgs.syb)
          (hsPkgs.bytestring)
          (hsPkgs.uulib)
          (hsPkgs.old-locale)
          ];
        };
      exes = {
        "uhcl" = {
          depends = [
            (hsPkgs.uhc-light)
            (hsPkgs.fgl)
            (hsPkgs.uulib)
            (hsPkgs.hashable)
            (hsPkgs.uhc-util)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.primitive)
            (hsPkgs.binary)
            (hsPkgs.syb)
            (hsPkgs.bytestring)
            (hsPkgs.uulib)
            (hsPkgs.old-locale)
            ];
          };
        "uhcr" = {
          depends = [
            (hsPkgs.uhc-light)
            (hsPkgs.fgl)
            (hsPkgs.uulib)
            (hsPkgs.hashable)
            (hsPkgs.uhc-util)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.network)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.primitive)
            (hsPkgs.binary)
            (hsPkgs.syb)
            (hsPkgs.bytestring)
            (hsPkgs.uulib)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }