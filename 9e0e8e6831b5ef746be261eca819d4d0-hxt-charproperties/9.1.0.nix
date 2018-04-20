{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hxt-charproperties";
          version = "9.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010- Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "Character properties and classes for XML and Unicode";
        description = "Character proprties defined by XML and Unicode standards.\nThese modules contain predicates for Unicode blocks and char proprties\nand character predicates defined by XML.\nSupported Unicode version is 5.2.0.";
        buildType = "Simple";
      };
      components = {
        hxt-charproperties = {
          depends  = [ hsPkgs.base ];
        };
      };
    }