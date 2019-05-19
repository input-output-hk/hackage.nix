{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = { name = "ruler"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group, Atze Dijkstra";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/ruler";
      url = "";
      synopsis = "Ruler tool for UHC";
      description = "Ruler tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc))
        (hsPkgs.buildPackages.shuffle or (pkgs.buildPackages.shuffle))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      exes = {
        "ruler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.uulib)
            (hsPkgs.mtl)
            (hsPkgs.uhc-util)
            (hsPkgs.uuagc)
            (hsPkgs.uuagc-cabal)
            (hsPkgs.shuffle)
            (hsPkgs.Cabal)
            ];
          };
        };
      };
    }