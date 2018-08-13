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
        name = "idna2008";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen";
      homepage = "";
      url = "";
      synopsis = "Converts Unicode hostnames into ASCII";
      description = "Library to convert internationalized domain names between\nthe ASCII (ACE) and Unicode encodings in accordance with\nIDNA2008 (RFC 5991: Internationalized Domain Names in\nApplications (IDNA): Protocol). Unlike IDNA2003, IDNA2008 is\nnot based on RFC 3454: Preparation of Internationalized\nStrings (\\\"stringprep\\\").";
      buildType = "Simple";
    };
    components = {
      "idna2008" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.punycode)
          (hsPkgs.split)
        ];
      };
    };
  }