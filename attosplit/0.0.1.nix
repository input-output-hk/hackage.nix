{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "attosplit";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Suite Solutions Ltd., Israel. All rights reserved.";
        maintainer = "yitz@community.haskell.org";
        author = "Yitzchak Gale";
        homepage = "http://projects.haskell.org/attosplit";
        url = "";
        synopsis = "Split a lazy bytestring at boundaries defined by an attoparsec parser";
        description = "Split a lazy bytestring into a lazy list of lazy bytestrings at\nboundaries defined by an attoparsec parser. The result of\na matching parse is included at the beginning of the\nlazy bytestring which begins at that point.";
        buildType = "Simple";
      };
      components = {
        attosplit = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
      };
    }