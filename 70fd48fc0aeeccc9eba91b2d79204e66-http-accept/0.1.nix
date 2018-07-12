{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-accept";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/http-accept";
        url = "";
        synopsis = "Functions for working with HTTP Accept headers";
        description = "Functions for working with HTTP Accept headers.  You may also want\ncheck out parseHttpAccept from wai-extra:Network.Wai.Parse (it is\nnot tied to WAI in any way and some similar may make it into this\npackage eventually).";
        buildType = "Simple";
      };
      components = {
        "http-accept" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }