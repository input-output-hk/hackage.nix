{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "marmalade-upload";
          version = "0.10";
        };
        license = "MIT";
        copyright = "(C) 2014 Sebastian Wiesner";
        maintainer = "swiesner@lunaryorn.com";
        author = "Sebastian Wiesner";
        homepage = "https://github.com/lunaryorn/marmalade-upload";
        url = "";
        synopsis = "Upload packages to Marmalade";
        description = "Upload Emacs packages to the <http://marmalade-repo.org/ Marmalade> ELPA\narchive.";
        buildType = "Simple";
      };
      components = {
        marmalade-upload = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          marmalade-upload = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.keyring
              hsPkgs.marmalade-upload
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          build = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.shake
              hsPkgs.split
              hsPkgs.text
              hsPkgs.zip-archive
            ];
          };
        };
        tests = {
          marmalade = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.marmalade-upload
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }