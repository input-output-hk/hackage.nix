{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "whois";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "http://github.com/CodeBlock/whois-hs";
        url = "";
        synopsis = "WHOIS client library.";
        description = "Provides a simple client to return WHOIS information about\nIP addresses or hostnames.";
        buildType = "Simple";
      };
      components = {
        whois = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.network
          ];
        };
      };
    }