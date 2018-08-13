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
      specVersion = "1.10";
      identifier = {
        name = "azubi";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "azubi@ingolf-wagner.de";
      author = "Ingolf Wagner";
      homepage = "http://palovandalo.com/azubi";
      url = "";
      synopsis = "A simple DevOps tool which will never \"reach\" enterprice level.";
      description = "A simple DevOps tool which will never \"reach\" enterprice level.\nIt is basically a Haskell lib which you can use to create\nnice scripts that setup you computer, via ssh bashscrip,\nDockerfile, etc";
      buildType = "Simple";
    };
    components = {
      "azubi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.options)
        ];
      };
    };
  }