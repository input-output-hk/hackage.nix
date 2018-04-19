{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "fastcgi";
          version = "3001.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert, Lemmih";
        maintainer = "bjorn@bringert.net";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A Haskell library for writing FastCGI programs";
        description = "This library lets you write FastCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to FastCGI.";
        buildType = "Configure";
      };
      components = {
        fastcgi = {
          depends  = [
            hsPkgs.cgi
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.fcgi ];
        };
      };
    }