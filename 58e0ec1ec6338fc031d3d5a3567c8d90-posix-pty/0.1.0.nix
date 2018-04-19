{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "posix-pty";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2013 Merijn Verstraaten";
        maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
        author = "Merijn Verstraaten";
        homepage = "";
        url = "";
        synopsis = "Pseudo terminal interaction with subprocesses.";
        description = "This package simplifies the creation of subprocesses that interact with\ntheir parent via a pseudo terminal (see @man pty@).";
        buildType = "Simple";
      };
      components = {
        posix-pty = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
      };
    }