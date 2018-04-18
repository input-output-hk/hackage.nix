{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ip6addr";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2011-2015 - Michel Boucey";
        maintainer = "michel.boucey@gmail.com";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/ip6addr";
        url = "";
        synopsis = "Commandline tool to generate IPv6 address text representations";
        description = "Commandline tool to generate IPv6 address text representations";
        buildType = "Simple";
      };
      components = {
        exes = {
          ip6addr = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.IPv6Addr
              hsPkgs.text
            ];
          };
        };
      };
    }