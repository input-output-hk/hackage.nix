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
        name = "gdp";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Matt Noonan";
      maintainer = "matt.noonan@gmail.com";
      author = "Matt Noonan";
      homepage = "https://github.com/githubuser/gdp#readme";
      url = "";
      synopsis = "Reason about invariants and preconditions with ghosts of departed proofs.";
      description = "Reason about invariants and preconditions with ghosts of departed proofs.\nThe GDP library implements building blocks for creating and working with\nAPIs that may carry intricate preconditions for proper use. As a library\nauthor, you can use `gdp` to encode your API's preconditions and invariants,\nso that they will be statically checked at compile-time.\nAs a library user, you can use the `gdp` deduction rules to codify your\nproofs that you are using the library correctly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lawful)
        ];
      };
      exes = {
        "gdp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gdp)
          ];
        };
      };
    };
  }