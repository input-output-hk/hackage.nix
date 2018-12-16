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
      specVersion = "1.2";
      identifier = {
        name = "parseargs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://wiki.cs.pdx.edu/bartforge/parseargs";
      url = "";
      synopsis = "Command-line argument parsing library for Haskell programs";
      description = "Parse command-line arguments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "parseargs-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }