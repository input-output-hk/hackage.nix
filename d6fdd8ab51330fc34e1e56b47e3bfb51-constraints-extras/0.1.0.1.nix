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
        name = "constraints-extras";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Cale Gibbard, Ali Abrar";
      homepage = "";
      url = "";
      synopsis = "Utility package for constraints";
      description = "";
      buildType = "Simple";
    };
    components = {
      "constraints-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }