{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "github-release";
          version = "1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/github-release#readme";
        url = "";
        synopsis = "Upload files to GitHub releases.";
        description = "GitHub Release is a command-line utility for uploading files to GitHub releases.";
        buildType = "Simple";
      };
      components = {
        github-release = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.optparse-generic
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.uri-templater
          ];
        };
        exes = {
          github-release = {
            depends  = [
              hsPkgs.base
              hsPkgs.github-release
            ];
          };
        };
      };
    }