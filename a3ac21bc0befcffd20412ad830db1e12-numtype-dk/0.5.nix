{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "numtype-dk";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Buckwalter 2012-2014";
        maintainer = "bjorn@buckwalter.se";
        author = "Bjorn Buckwalter";
        homepage = "https://github.com/bjornbm/numtype-dk";
        url = "";
        synopsis = "Type-level integers, using TypeNats, Data\nKinds, and Closed Type Families.";
        description = "This package provides type level representations of the\n(positive and negative) integers and basic operations (addition,\nsubtraction, multiplication, division, exponentiation) on these.\nThe numtype-dk package differs from the numtype package in that\nthe NumTypes are implemented using Data Kinds, TypeNats, and\nClosed Type Families rather than Functional Dependencies.\nRequires GHC 7.8 or later.";
        buildType = "Simple";
      };
      components = {
        numtype-dk = {
          depends  = [ hsPkgs.base ];
        };
      };
    }