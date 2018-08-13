{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "atom-basic";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Carl Baatz";
      maintainer = "carl.baatz@gmail.com";
      author = "Carl Baatz";
      homepage = "";
      url = "";
      synopsis = "Basic Atom feed construction";
      description = "This library provides a type for an Atom feed\n(http://tools.ietf.org/html/rfc4287) and a way to produce its XML. XML is\nconstructed with the help of a record of construction functions (`XMLGen`)\nthat you provide. This allows you to easily use this with the XML library\nof your choice.";
      buildType = "Simple";
    };
    components = {
      "atom-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }