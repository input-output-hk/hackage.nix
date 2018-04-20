{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-frontend-monadcgi";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "";
        url = "";
        synopsis = "Run CGI apps on WAI.";
        description = "Allows programs written against MonadCGI to run with any WAI handler. This is most useful for running your existing CGI apps on Warp. For true \"yo dawg\"-ness, try running this through the WAI CGI backend.";
        buildType = "Simple";
      };
      components = {
        wai-frontend-monadcgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cgi
            hsPkgs.conduit
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.case-insensitive
            hsPkgs.wai
          ];
        };
      };
    }