{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "variation"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cspollard@gmail.com";
      author = "Chris Pollard";
      homepage = "";
      url = "";
      synopsis = "nominal value with possible variations";
      description = "this package provides a Variation data type: a (mandatory) nominal value with\npossible associated variations on that nominal value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          ];
        };
      };
    }