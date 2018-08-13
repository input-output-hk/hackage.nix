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
        name = "feed-translator";
        version = "0.1.0.1";
      };
      license = "AGPL-3.0-only";
      copyright = "(c) 2015 Hong Minhee";
      maintainer = "hongminhee@member.fsf.org";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/feed-translator";
      url = "";
      synopsis = "Translate syndication feeds";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "feed-translator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.feed)
            (hsPkgs.iso639)
            (hsPkgs.lens)
            (hsPkgs.naver-translate)
            (hsPkgs.network-uri)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.wreq)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }