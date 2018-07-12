{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "interpol";
          version = "0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/interpol";
        url = "";
        synopsis = "GHC preprocessor to enable variable interpolation in strings";
        description = "This preprocessor enables variable interpolation in strings.\nSee the README.md file for details.";
        buildType = "Simple";
      };
      components = {
        "interpol" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "interpol" = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.haskell-src-exts
              hsPkgs.regex-posix
            ];
          };
        };
      };
    }