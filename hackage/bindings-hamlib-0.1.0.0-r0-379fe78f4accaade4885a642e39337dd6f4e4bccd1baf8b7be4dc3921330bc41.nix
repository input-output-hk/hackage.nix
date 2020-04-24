{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-hamlib"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2014 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/CodeBlock/hamlib-haskell";
      url = "";
      synopsis = "Hamlib bindings for Haskell";
      description = "Haskell FFI bindings for hamlib";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = [
          (pkgs."hamlib" or ((hsPkgs.pkgs-errors).sysDepError "hamlib"))
          ];
        buildable = true;
        };
      exes = {
        "hamlib-hs-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-hamlib" or ((hsPkgs.pkgs-errors).buildDepError "bindings-hamlib"))
            ];
          buildable = true;
          };
        };
      };
    }