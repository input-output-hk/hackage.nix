{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-filter"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2018 Sophie Hirn";
      maintainer = "sophie.hirn@wyvernscale.com";
      author = "Sophie Hirn";
      homepage = "https://github.com/LadyBoonami/data-filter";
      url = "";
      synopsis = "Utilities for filtering";
      description = "Some helpers to make using Prelude.filter and similar value selection a bit\neasier. Includes combinators for predicates as well as an operator to match\nthe constructor used for the given value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }