{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "pkcs1";
          version = "1.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "";
        author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
        homepage = "http://sep07.mroot.net/";
        url = "";
        synopsis = "RSA encryption with PKCS1 padding";
        description = "This is an implementation of RSA encryption with PKCS1 padding, developed\nas part of the Barracuda ad-hoc P2P chat client.\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
        buildType = "Simple";
      };
      components = {
        pkcs1 = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.bytestring
          ];
        };
      };
    }