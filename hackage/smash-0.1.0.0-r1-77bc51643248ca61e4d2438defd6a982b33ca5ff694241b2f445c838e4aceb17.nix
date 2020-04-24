{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghc-flags = false; perf-flags = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "smash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Emily Pillmore <emilypi@cohomolo.gy>";
      maintainer = "emilypi@cohomolo.gy";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/smash";
      url = "";
      synopsis = "Combinators for Maybe types";
      description = "This package provides the calculus for pointed types, including the\npointed product, 'Can', the pointed coproduct, 'Wedge', and the smash product.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (flags.ghc-flags) (hsPkgs."ghcflags" or ((hsPkgs.pkgs-errors).buildDepError "ghcflags"));
        build-tools = (pkgs.lib).optional (flags.ghc-flags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or ((hsPkgs.pkgs-errors).buildToolDepError "hsinspect")));
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }