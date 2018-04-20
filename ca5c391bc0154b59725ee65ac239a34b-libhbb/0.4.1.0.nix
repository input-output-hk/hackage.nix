{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "libhbb";
          version = "0.4.1.0";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "contact@wolf-kissendorf.de";
        author = "Christian Wolf";
        homepage = "https://bitbucket.org/bhris/libhbb";
        url = "";
        synopsis = "Backend for text editors to provide better Haskell editing support.";
        description = "This project contains a library that utilizes the GHC API\nto provide some special features for Haskell text editors.\nLibhbb has been designed to extend ghc-mod (which does\nsimilar tasks) with certain features. However libhbb is\ncompletely independent of ghc-mod. The connection to\nghc-mod is established in a package called hbb. The\nfeatures of libhbb can be used standalone by the means of\nthe executable libhbb-cli which is sipped as well.\nThe big outstanding feature that libhbb provides is the\nability to inline functions (their body is converted to a\nlambda function and written in place of the according\nname).";
        buildType = "Simple";
      };
      components = {
        libhbb = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.syb
            hsPkgs.ghc-paths
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
        exes = {
          libhbb-cli = {
            depends  = [
              hsPkgs.base
              hsPkgs.libhbb
              hsPkgs.bytestring
              hsPkgs.directory
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.hspec
              hsPkgs.syb
              hsPkgs.libhbb
              hsPkgs.bytestring
              hsPkgs.ghc-paths
              hsPkgs.mtl
            ];
          };
        };
      };
    }