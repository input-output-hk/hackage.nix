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
      specVersion = "2.0";
      identifier = {
        name = "pointful";
        version = "1.0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikhail Glushenkov <mikhail.glushenkov@gmail.com>";
      author = "Thomas Jäger, Bertram Felgenhauer, James Cook et al.";
      homepage = "http://github.com/23Skidoo/pointful";
      url = "";
      synopsis = "Pointful refactoring tool";
      description = "Stand-alone command-line version of the pointful plugin\nfor Lambdabot.";
      buildType = "Simple";
    };
    components = {
      "pointful" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts-simple)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "pointful" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pointful)
          ];
        };
      };
    };
  }