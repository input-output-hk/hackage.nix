{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "atom-basic";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Carl Baatz";
        maintainer = "Carl Baatz <carl.baatz@gmail.com>";
        author = "Carl Baatz <carl.baatz@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Basic Atom feed construction";
        description = "<https://hackage.haskell.org/package/atom-basic atom-basic> aims to provide\na type-safe <http://tools.ietf.org/html/rfc4287> Atom feed for the XML\npackage of your choice. Constructors for the 'Feed' and 'Entry' data types\nare provided. You pass values of these types to the 'feedXML' or 'entryXML'\nto generate XML. You provide an 'XMLGen' record of generator functions\nusing your preferred XML package.";
        buildType = "Simple";
      };
      components = {
        atom-basic = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
          ] ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
      };
    }