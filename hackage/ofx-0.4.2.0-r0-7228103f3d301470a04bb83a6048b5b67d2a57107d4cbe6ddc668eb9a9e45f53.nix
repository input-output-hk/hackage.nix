{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ofx";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/ofx";
      url = "";
      synopsis = "Parser for OFX data";
      description = "A parser for Open Financial Exchange (OFX) financial data. This\nhandles OFX version 1.03, which is documented at http://www.ofx.net\nThis also handles QFX, which is OFX plus some minor additions made\nby Intuit, the publishers of Quicken.\n\nThe parser will place all the data into a tree, which you can query\nfor whatever data you may need, although you will need to be\nfamiliar with the OFX spec to do this. There is also a Transaction\ntype which you can easily parse from the tree; this will contain\nmost, perhaps all, of the data you will be interested in if your OFX\nfile is from a bank or credit card account.\n\nAll the OFX and QFX files I have seen use the format from the 1.0\nseries of OFX, which is primarily SGML based. OFX version 2 is XML\nbased.  This parser likely will not work on those files.";
      buildType = "Simple";
    };
    components = {
      "ofx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.time)
        ];
      };
      exes = {
        "renderOfx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.time)
          ];
        };
        "renderTransactions" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.time)
          ];
        };
      };
    };
  }