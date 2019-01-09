{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "transformers-eff"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/ocharles/transformers-eff";
      url = "";
      synopsis = "An approach to managing composable effects, ala mtl/transformers/extensible-effects/Eff";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.free)
          (hsPkgs.mmorph)
          ];
        };
      benchmarks = {
        "oleg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.effect-interpreters)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }