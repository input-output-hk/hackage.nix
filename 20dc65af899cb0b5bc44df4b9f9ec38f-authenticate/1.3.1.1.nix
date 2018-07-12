{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "authenticate";
          version = "1.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman, Hiromi Ishii, Arash Rouhani";
        homepage = "http://github.com/yesodweb/authenticate";
        url = "";
        synopsis = "Authentication methods for Haskell web applications.";
        description = "Focus is on third-party authentication methods, such as OpenID and BrowserID.\n\nNote: Facebook support is now provided by the fb package: <http://hackage.haskell.org/package/fb>.";
        buildType = "Simple";
      };
      components = {
        "authenticate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.http-conduit
            hsPkgs.tagsoup
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.xml-conduit
            hsPkgs.blaze-builder
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.monad-control
            hsPkgs.blaze-builder-conduit
          ];
        };
      };
    }