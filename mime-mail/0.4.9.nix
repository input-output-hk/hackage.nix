{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mime-mail";
          version = "0.4.9";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/mime-mail";
        url = "";
        synopsis = "Compose MIME email messages.";
        description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail>.";
        buildType = "Simple";
      };
      components = {
        mime-mail = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.process
            hsPkgs.random
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.filepath
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mime-mail
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
      };
    }