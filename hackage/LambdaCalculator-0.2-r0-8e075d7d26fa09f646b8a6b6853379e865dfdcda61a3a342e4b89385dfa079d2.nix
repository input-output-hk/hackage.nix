{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaCalculator"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Sheard";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Tim Sheard";
      homepage = "";
      url = "";
      synopsis = "A basic lambda calculator with beta reduction and a REPL";
      description = "A basic lambda calculator with beta reduction and a REPL";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaCalculator" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.haskeline)
            (hsPkgs.pretty)
            (hsPkgs.parsec)
            ];
          };
        };
      };
    }