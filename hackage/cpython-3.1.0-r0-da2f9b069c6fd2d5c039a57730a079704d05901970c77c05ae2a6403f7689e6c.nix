{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "cpython"; version = "3.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) John Millikin 2009,\n(c) Python Software Foundation 2001-2009.";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/bindings/cpython/";
      url = "";
      synopsis = "Bindings for libpython";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        pkgconfig = [
          (pkgconfPkgs."python-3.1" or ((hsPkgs.pkgs-errors).pkgConfDepError "python-3.1"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }