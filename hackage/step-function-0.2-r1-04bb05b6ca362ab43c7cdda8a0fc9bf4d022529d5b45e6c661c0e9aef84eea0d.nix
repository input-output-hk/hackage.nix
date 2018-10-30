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
        name = "step-function";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>, Petter Bergman <jon.petter.bergman@gmail.com>";
      homepage = "https://github.com/jonpetterbergman/step-function";
      url = "";
      synopsis = "Staircase functions or piecewise constant functions";
      description = "Step functions, staircase functions or piecewise constant functions.\nImplemented as a default value and a series of transitions.\nSupports merging two step functions using a supplied merging function.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) (if compiler.isGhc && compiler.version.ge "7.10"
          then [ (hsPkgs.transformers) ]
          else [
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ]);
      };
      tests = {
        "merge" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.step-function)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }