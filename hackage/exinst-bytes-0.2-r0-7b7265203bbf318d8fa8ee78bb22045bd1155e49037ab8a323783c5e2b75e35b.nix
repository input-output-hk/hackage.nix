{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "exinst-bytes"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2016";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Derive instances for the `bytes` library for your existential types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytes" or ((hsPkgs.pkgs-errors).buildDepError "bytes"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."exinst" or ((hsPkgs.pkgs-errors).buildDepError "exinst"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }