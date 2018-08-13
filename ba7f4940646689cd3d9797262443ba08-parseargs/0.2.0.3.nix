{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "parseargs";
        version = "0.2.0.3";
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
      "parseargs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "parseargs-example" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }