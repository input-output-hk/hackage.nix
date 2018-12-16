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
      specVersion = "1.6";
      identifier = {
        name = "hxt-tagsoup";
        version = "9.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "TagSoup parser for HXT";
      description = "The Tagsoup interface for the HXT lazy HTML parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.hxt-charproperties)
          (hsPkgs.hxt-unicode)
          (hsPkgs.hxt)
        ];
      };
    };
  }