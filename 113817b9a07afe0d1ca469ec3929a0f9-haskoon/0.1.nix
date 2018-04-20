{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskoon";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "David Leuschner <leuschner@openfactis.org>";
        author = "David Leuschner, Dirk Spöri";
        homepage = "";
        url = "";
        synopsis = "Web Application Abstraction";
        description = "Web Astraction Layer with a binding to CGI providing a simple way to\nmap parameter and header values to data structures (inspired by HAppS)\nand a sitemap functionality to map URLs to functions that answer the request.";
        buildType = "Simple";
      };
      components = {
        haskoon = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.hslogger
            hsPkgs.regex-posix
            hsPkgs.MissingH
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.MaybeT
            hsPkgs.fastcgi
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.hsp
            hsPkgs.hsx
          ];
        };
      };
    }