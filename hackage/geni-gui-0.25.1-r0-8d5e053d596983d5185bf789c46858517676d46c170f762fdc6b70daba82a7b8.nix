{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "geni-gui"; version = "0.25.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://projects.haskell.org/GenI";
      url = "";
      synopsis = "GenI graphical user interface";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-macosx or (pkgs.buildPackages.cabal-macosx))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.GenI)
          (hsPkgs.cabal-macosx)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.yaml-light)
          (hsPkgs.hslogger)
          (hsPkgs.json)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
          (hsPkgs.text)
          (hsPkgs.graphviz)
          ];
        };
      exes = {
        "geni-gui" = {
          depends = [ (hsPkgs.base) (hsPkgs.GenI) (hsPkgs.geni-gui) ];
          };
        };
      };
    }