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
        name = "torrent";
        version = "2007.6.29";
      };
      license = "BSD-3-Clause";
      copyright = "2005-2007, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "BitTorrent file parser.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "torrent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bencode)
          (hsPkgs.filepath)
          (hsPkgs.network)
        ];
      };
    };
  }