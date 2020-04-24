{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { nopkgconfig = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bindings-libzip"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.astanin@gmail.com";
      author = "Sergey Astanin";
      homepage = "http://bitbucket.org/astanin/hs-libzip/";
      url = "";
      synopsis = "Low level bindings to libzip.";
      description = "This package provides low-level bindings to libzip (v0.11) library.\nFor higher-level interface please use LibZip package:\n<http://hackage.haskell.org/package/LibZip>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        libs = (pkgs.lib).optionals (flags.nopkgconfig) [
          (pkgs."zip" or ((hsPkgs.pkgs-errors).sysDepError "zip"))
          (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
          ];
        pkgconfig = (pkgs.lib).optional (!flags.nopkgconfig) (pkgconfPkgs."libzip" or ((hsPkgs.pkgs-errors).pkgConfDepError "libzip"));
        buildable = true;
        };
      };
    }