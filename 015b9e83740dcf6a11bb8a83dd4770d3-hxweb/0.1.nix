{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hxweb";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2006, Lemmih";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Minimal webframework using fastcgi, libxml2 and libxslt.";
        description = "Fast template based web-framework using libxslt and fastcgi.";
        buildType = "Custom";
      };
      components = {
        "hxweb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.fastcgi
            hsPkgs.mtl
            hsPkgs.libxml
            hsPkgs.xslt
          ];
        };
      };
    }