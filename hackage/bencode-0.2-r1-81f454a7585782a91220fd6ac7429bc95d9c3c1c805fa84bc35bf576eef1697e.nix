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
      specVersion = "0";
      identifier = {
        name = "bencode";
        version = "0.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.binary)
        ];
      };
    };
  }