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
      specVersion = "1.18";
      identifier = {
        name = "hs-conllu";
        version = "0.1.2";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "bruno cuconato <bcclaro+haskell+hsconllu@gmail.com>";
      author = "bruno cuconato";
      homepage = "https://github.com/odanoburu/hs-conllu";
      url = "";
      synopsis = "Conllu validating parser and utils.";
      description = "utilities to parse, print, diff, and analyse data in CoNLL-U format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.void)
        ];
      };
      exes = {
        "hs-conllu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
          ];
        };
      };
    };
  }