{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "parseargs";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/parseargs";
      url = "";
      synopsis = "Command-line argument parsing library for Haskell programs";
      description = "Parse command-line arguments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "parseargs-example" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }