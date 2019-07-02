{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rock"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/ollef/rock#readme";
      url = "";
      synopsis = "A build system for incremental, parallel, and demand-driven computations";
      description = "See <https://www.github.com/ollef/rock> for more\ninformation and\n<https://github.com/ollef/rock/tree/master/examples> for\nexamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.deriving-compat)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.protolude)
          ];
        };
      exes = {
        "rock-spreadsheet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rock)
            (hsPkgs.protolude)
            (hsPkgs.dependent-sum-template)
            ];
          };
        };
      };
    }