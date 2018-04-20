{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "pam";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Evgeny Tarasov";
        maintainer = "etarasov.ekb@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Haskell binding for C PAM API";
        description = "This package provides PAM interface for Haskell programs. It contains subset of C PAM API bindings. The bindings don't include functions for writing PAM modules.";
        buildType = "Simple";
      };
      components = {
        pam = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.pam ];
        };
      };
    }