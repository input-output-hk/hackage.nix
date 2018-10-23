{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "egison-tutorial";
        version = "3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "egisatoshi@gmail.com";
      author = "Satoshi Egi";
      homepage = "http://egison.pira.jp";
      url = "";
      synopsis = "A Tutorial Program for The Programming Language Egison";
      description = "A tutorial program for the programming language Egison.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "egison-tutorial" = {
          depends  = [
            (hsPkgs.egison)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.regex-posix)
            (hsPkgs.strict-io)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }