{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "bindings-sane"; version = "0.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright (C) 2012  Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/bindings-sane";
      url = "";
      synopsis = "FFI bindings to libsane";
      description = "These are FFI bindings to the SANE API (version 1.0)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sane-backends" or ((hsPkgs.pkgs-errors).pkgConfDepError "sane-backends"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }