{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "machines"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Rúnar Bjarnason, Josh Cough";
      homepage = "http://github.com/ekmett/machines/";
      url = "";
      synopsis = "Networked stream transducers";
      description = "Networked stream transducers\n\nRúnar Bjarnason's talk on machines can be downloaded from:\n<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.pointed)
          (hsPkgs.profunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.mtl)
          (hsPkgs.void)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.fail);
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.machines) ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.machines)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.streaming)
            ];
          };
        };
      };
    }