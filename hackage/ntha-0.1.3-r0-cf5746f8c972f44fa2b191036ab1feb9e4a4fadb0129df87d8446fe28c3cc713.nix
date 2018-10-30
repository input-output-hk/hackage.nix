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
      specVersion = "1.10";
      identifier = {
        name = "ntha";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 zjhmale";
      maintainer = "zjhmale@gmail.com";
      author = "zjhmale";
      homepage = "https://github.com/zjhmale/ntha";
      url = "";
      synopsis = "A tiny statically typed functional programming language.";
      description = "Check out <https://github.com/zjhmale/Ntha#readme the readme> for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.monad-loops)
          (hsPkgs.array)
          (hsPkgs.z3)
          (hsPkgs.mtl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "ntha" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ntha)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "ntha-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ntha)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }