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
      specVersion = "1.8";
      identifier = {
        name = "AttoBencode";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Florian Hartwig <florian.j.hartwig@gmail.com>";
      author = "Florian Hartwig <florian.j.hartwig@gmail.com>";
      homepage = "http://bitbucket.org/FlorianHartwig/attobencode";
      url = "";
      synopsis = "Fast Bencode encoding and parsing library";
      description = "A library for encoding and decoding the Bencode data serialisation format\nused by BitTorrent. The focus of this library are good performance (good\nenough to be used in a BitTorrent client) and ease of\nuse.";
      buildType = "Simple";
    };
    components = {
      "AttoBencode" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.AttoBencode)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }