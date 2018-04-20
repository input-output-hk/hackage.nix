{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "marmalade-upload";
          version = "0.9";
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
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.aeson
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.http-client
          ];
        };
        exes = {
          marmalade-upload = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.data-default
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.optparse-applicative
              hsPkgs.keyring
              hsPkgs.marmalade-upload
            ];
          };
        };
        tests = {
          marmalade = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.exceptions
              hsPkgs.aeson
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.marmalade-upload
            ];
          };
        };
      };
    }