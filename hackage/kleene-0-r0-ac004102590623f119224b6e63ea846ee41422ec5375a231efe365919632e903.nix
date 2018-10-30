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
      specVersion = "2.0";
      identifier = {
        name = "kleene";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/kleene";
      url = "";
      synopsis = "Kleene algebra";
      description = "Kleene algebra\n\nThink: Regular expressions\n\nImplements ideas from /Regular-expression derivatives re-examined/ by\nScott Owens, John Reppy and Aaron Turon\n<https://doi.org/10.1017/S0956796808007090>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.base-compat-batteries)
          (hsPkgs.lattices)
          (hsPkgs.MemoTrie)
          (hsPkgs.range-set-list)
          (hsPkgs.step-function)
          (hsPkgs.regex-applicative)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }