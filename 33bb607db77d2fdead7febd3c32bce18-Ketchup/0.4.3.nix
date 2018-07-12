{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Ketchup";
          version = "0.4.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "zikyky@gmail.com";
        author = "Alessandro Gatti";
        homepage = "https://github.com/Hamcha/Ketchup";
        url = "";
        synopsis = "A super small web framework for those who don't like big and fancy codebases";
        description = "Ketchup is a very small HTTP server implementation, currently 300 LoC (for the whole thing)!\n\nKetchup is also made to be as modular and embeddable as possible, if you want a cabal-free Haskell app, just take those two/three files you need and put it in your project!\n\nCurrently Ketchup comes with:\n\n* Basic httpd functionality (IPV4 only for now)\n\n* URL Routing with parameters (ie. \\/user\\/:name\\/)\n\n* Static file handler (ie. static \\\".\\\" as route/handler)\n\n* Basic Auth (please use it over a HTTPS reverse proxy)\n\nDependencies\n\nThe core parts of Ketchup are all depedency free, that includes Ketchup.Httpd and Ketchup.Utils (and to a certain extent, Ketchup.Chunked).\nThe dependencies required are for the following modules:\n\n* Ketchup.Static (uses mime-types)\n\n* Ketchup.Auth (uses base64-bytestring)\n";
        buildType = "Simple";
      };
      components = {
        "Ketchup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.mime-types
            hsPkgs.network
            hsPkgs.text
          ];
        };
      };
    }