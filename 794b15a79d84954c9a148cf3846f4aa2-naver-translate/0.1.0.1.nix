{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "naver-translate";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2015 Hong Minhee";
        maintainer = "hongminhee@member.fsf.org";
        author = "Hong Minhee";
        homepage = "https://github.com/dahlia/naver-translate";
        url = "";
        synopsis = "Interface to Naver Translate";
        description = "";
        buildType = "Simple";
      };
      components = {
        naver-translate = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.iso639
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.wreq
            hsPkgs.random
          ];
        };
      };
    }