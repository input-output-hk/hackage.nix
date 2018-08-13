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
      specVersion = "1.6";
      identifier = {
        name = "hxt-tagsoup";
        version = "9.1.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "TagSoup parser for HXT";
      description = "The Tagsoup interface for the HXT lazy HTML parser.";
      buildType = "Simple";
    };
    components = {
      "hxt-tagsoup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.hxt-unicode)
          (hsPkgs.hxt)
        ];
      };
    };
  }