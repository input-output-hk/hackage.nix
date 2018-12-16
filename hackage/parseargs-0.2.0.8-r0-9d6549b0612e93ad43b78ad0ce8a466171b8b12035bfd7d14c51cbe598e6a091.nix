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
      specVersion = "1.8";
      identifier = {
        name = "parseargs";
        version = "0.2.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/parseargs";
      url = "";
      synopsis = "Full-featured command-line argument parsing library.";
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "test-parseargs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }