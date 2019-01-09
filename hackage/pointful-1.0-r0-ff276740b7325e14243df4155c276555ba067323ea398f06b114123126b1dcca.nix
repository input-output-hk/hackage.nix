{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "pointful"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "the.dead.shall.rise@gmail.com";
      author = "Mikhail Glushenkov";
      homepage = "";
      url = "";
      synopsis = "Pointful refactoring tool";
      description = "Stand-alone command-line version of the pointful plugin\nfor lambdabot.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pointful" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskell-src)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }