{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "xtest"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "";
      url = "";
      synopsis = "Thin FFI bindings to X11 XTest library";
      description = "This package provides bindings to some functions from X11 XTest\nextension client library (-lXtst).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          ];
        libs = [ (pkgs."Xtst" or ((hsPkgs.pkgs-errors).sysDepError "Xtst")) ];
        buildable = true;
        };
      };
    }