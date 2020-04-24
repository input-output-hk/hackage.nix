{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-assertions"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/json-assertions.git";
      url = "";
      synopsis = "Test that your (Aeson) JSON encoding matches your expectations";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."indexed" or ((hsPkgs.pkgs-errors).buildDepError "indexed"))
          (hsPkgs."indexed-free" or ((hsPkgs.pkgs-errors).buildDepError "indexed-free"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }