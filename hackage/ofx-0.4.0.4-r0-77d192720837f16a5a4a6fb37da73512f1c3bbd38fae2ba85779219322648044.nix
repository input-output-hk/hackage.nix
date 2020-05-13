{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ofx"; version = "0.4.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/ofx";
      url = "";
      synopsis = "Parser for OFX data";
      description = "A parser for Open Financial Exchange (OFX) financial data. This\nhandles OFX version 1.03, which is documented at http://www.ofx.net\nThis also handles QFX, which is OFX plus some minor additions made\nby Intuit, the publishers of Quicken.\n\nThe parser will place all the data into a tree, which you can query\nfor whatever data you may need, although you will need to be\nfamiliar with the OFX spec to do this. There is also a Transaction\ntype which you can easily parse from the tree; this will contain\nmost, if not all, of the data you will be interested in if your OFX\nfile is from a bank or credit card account.\n\nAll the OFX and QFX files I have seen use the format from the 1.0\nseries of OFX, which is primarily SGML based. OFX version 2 is XML\nbased. If this parser works on those files, consider it a happy\naccident.\n\nThe OFX spec is available at <http://www.ofx.net>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }