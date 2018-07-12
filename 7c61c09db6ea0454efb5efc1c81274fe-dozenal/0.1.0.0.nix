{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dozenal";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "siddhanathan@gmail.com";
        author = "Siddhanathan Shanmugam";
        homepage = "https://github.com/siddhanathan/dozenal";
        url = "";
        synopsis = "A Haskell library for using Dozenal (Duodecimal - Base 12) numbers.";
        description = "A Haskell library for using Dozenal (Duodecimal - Base 12) numbers.";
        buildType = "Simple";
      };
      components = {
        "dozenal" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }