{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SimpleAES";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 University of Tromsø, 2009 David Himmelstrup";
        maintainer = "David Himmelstrup <lemmih@gmail.com>";
        author = "Svein Ove Aas <svein.ove@aas.no>, David Himmelstrup <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Fast AES encryption/decryption for bytestrings";
        description = "A simplified binding to Brian Gladman's AES implementation, including a copy of that implementation";
        buildType = "Simple";
      };
      components = {
        SimpleAES = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mwc-random
          ];
        };
      };
    }