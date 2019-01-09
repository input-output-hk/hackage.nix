{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hyper-extra"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Heinrich Apfelmus 2016-2018";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "https://github.com/HeinrichApfelmus/hyper-haskell";
      url = "";
      synopsis = "Display instances for the HyperHaskell graphical Haskell interpreter";
      description = "This package is part of the /HyperHaskell/ project and provides\nvisual representations for various data types, in particular\ndiagrams from the @diagrams@ package.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.svg-builder)
          (hsPkgs.hyper)
          ];
        };
      };
    }