{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ats-pkg";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/ats-pkg#readme";
        url = "";
        synopsis = "Package manager for ATS";
        description = "A collection of scripts to make building ATS projects easy.";
        buildType = "Simple";
      };
      components = {
        ats-pkg = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.filemanip
            hsPkgs.bytestring
            hsPkgs.shake
            hsPkgs.tar
            hsPkgs.zlib
            hsPkgs.http-client-tls
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.dhall
            hsPkgs.mtl
            hsPkgs.shake-ext
            hsPkgs.composition-prelude
          ];
        };
        exes = {
          atspkg = {
            depends  = [
              hsPkgs.base
              hsPkgs.ats-pkg
            ];
          };
        };
        tests = {
          ats-pkg-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ats-pkg
              hsPkgs.hspec
            ];
          };
        };
      };
    }