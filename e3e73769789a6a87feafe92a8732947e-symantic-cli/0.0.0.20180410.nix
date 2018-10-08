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
      specVersion = "1.18";
      identifier = {
        name = "symantic-cli";
        version = "0.0.0.20180410";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
      author = "Julien Moutinho <julm+symantic@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Library for Command Line Interface (CLI)";
      description = "Symantics for CLI.";
      buildType = "Simple";
    };
    components = {
      "symantic-cli" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.megaparsec)
          (hsPkgs.symantic-document)
        ];
      };
    };
  }