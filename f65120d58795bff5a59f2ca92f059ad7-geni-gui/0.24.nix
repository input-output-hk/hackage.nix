{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "geni-gui";
        version = "0.24";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://projects.haskell.org/GenI";
      url = "";
      synopsis = "GenI graphical user interface";
      description = "";
      buildType = "Custom";
    };
    components = {
      "geni-gui" = {
        depends  = [
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
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
          (hsPkgs.text)
          (hsPkgs.graphviz)
        ];
      };
      exes = {
        "geni-gui" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GenI)
            (hsPkgs.geni-gui)
          ];
        };
      };
    };
  }