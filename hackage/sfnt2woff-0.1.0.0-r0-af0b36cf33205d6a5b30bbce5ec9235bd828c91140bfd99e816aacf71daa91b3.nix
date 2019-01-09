{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sfnt2woff"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/sfnt2woff#readme";
      url = "";
      synopsis = "A command line tool to convert TrueType/OpenType fonts to WOFF format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = [ (pkgs."z") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      exes = {
        "sfnt2woff" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.sfnt2woff)
            ];
          };
        };
      tests = {
        "sfnt2woff-test" = { depends = [ (hsPkgs.base) (hsPkgs.sfnt2woff) ]; };
        };
      };
    }