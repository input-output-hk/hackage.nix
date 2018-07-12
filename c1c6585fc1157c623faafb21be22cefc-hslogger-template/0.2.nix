{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hslogger-template";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>, Ian Taylor <ian@lorf.org>";
        homepage = "http://github.com/bsl/hslogger-template";
        url = "";
        synopsis = "Automatic generation of hslogger functions";
        description = "Library for generating hslogger functions using Template Haskell.";
        buildType = "Custom";
      };
      components = {
        "hslogger-template" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.hslogger
            hsPkgs.template-haskell
          ];
        };
      };
    }