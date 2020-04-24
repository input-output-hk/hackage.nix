{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fast-mult"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/fast-mult#readme";
      url = "";
      synopsis = "Numeric type with asymptotically faster multiplications.";
      description = "This numeric type internally reorders multiplications to achieve\nasymptotically faster multiplication of large numbers of small integers in particular.\nSee the module docs for more detail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."strict-base" or ((hsPkgs.pkgs-errors).buildDepError "strict-base"))
          ];
        buildable = true;
        };
      };
    }