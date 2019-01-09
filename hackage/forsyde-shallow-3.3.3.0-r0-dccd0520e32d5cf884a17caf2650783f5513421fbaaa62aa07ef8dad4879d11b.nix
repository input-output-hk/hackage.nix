{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "forsyde-shallow"; version = "3.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2018 ForSyDe Group, KTH/EECS/ELE";
      maintainer = "ForSyDe Group <forsyde-dev@eecs.kth.se>";
      author = "ForSyDe Group, KTH/EECS/ELE";
      homepage = "http://forsyde.ict.kth.se/";
      url = "";
      synopsis = "ForSyDe's Haskell-embedded Domain Specific Language.";
      description = "The ForSyDe (Formal System Design) methodology has been developed with the objective to move system design to a higher level of abstraction and to bridge the abstraction gap by transformational design refinement.\n\nThis library provides a shallow implementation of ForSyDe as a Haskell-embedded Domain Specific Language (DSL). For more information, please see ForSyDe's website: <https://forsyde.github.io/>. For examples and tutorials using @ForSyDe.Shallow@, check the <https://github.com/forsyde/forsyde-shallow-examples forsyde-shallow-examples> repository.\n\nThis package is a spin-off of the <https://hackage.haskell.org/package/ForSyDe ForSyDe> project and it follows its versioning.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.random)
          ];
        };
      tests = {
        "unit" = {
          depends = [ (hsPkgs.base) (hsPkgs.forsyde-shallow) (hsPkgs.hspec) ];
          };
        };
      };
    }