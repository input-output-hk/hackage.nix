{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "flat-tex";
        version = "0.3.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "http://www.imn.htwk-leipzig.de/~waldmann/";
      author = "Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/flat-tex";
      url = "";
      synopsis = "flatten a latex multi-file latex document";
      description = "flatten a latex multi-file latex document:\nexpand all \\input statements and remove all comments";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flat-tex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }