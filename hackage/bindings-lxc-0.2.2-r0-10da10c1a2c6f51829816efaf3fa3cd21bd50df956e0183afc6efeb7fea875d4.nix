{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-lxc"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/fizruk/bindings-lxc";
      url = "";
      synopsis = "Direct Haskell bindings to LXC (Linux containers) C API.";
      description = "The package provides direct bindings to LXC C API through @bindings-dsl@.\nFor high-level Haskell LXC API see <http://hackage.haskell.org/package/lxc lxc package>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."lxc" or ((hsPkgs.pkgs-errors).sysDepError "lxc")) ];
        buildable = true;
        };
      };
    }