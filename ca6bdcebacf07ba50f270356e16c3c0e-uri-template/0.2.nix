{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      new-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uri-template";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sof@forkIO.com";
        author = "Sigbjorn Finne <sof@forkIO.com>";
        homepage = "";
        url = "";
        synopsis = "URI template library for Haskell";
        description = "A URI template expansion library for Haskell. Provides\nsupport for Joe Gregorio's standardized format, OpenSearch 1.1's\nformat + WADL/WSDL-style templates.";
        buildType = "Simple";
      };
      components = {
        uri-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.utf8-string
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          main = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }