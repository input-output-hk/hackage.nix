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
      specVersion = "0";
      identifier = {
        name = "bencode";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2005-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com), Jesper Louis Andersen";
      homepage = "";
      url = "";
      synopsis = "Parser and printer for bencoded data.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "bencode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }