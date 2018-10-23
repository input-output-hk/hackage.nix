{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "interpol";
        version = "0.2.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "scvalex@gmail.com";
      author = "Alexandru Scvortov <scvalex@gmail.com>";
      homepage = "https://github.com/scvalex/interpol";
      url = "";
      synopsis = "GHC preprocessor and library to enable variable interpolation in strings";
      description = "This preprocessor enables variable interpolation in strings.\nAlternatively, the library may be used.\n\nSee the README.md file for details.";
      buildType = "Simple";
    };
    components = {
      "interpol" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "interpol" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }