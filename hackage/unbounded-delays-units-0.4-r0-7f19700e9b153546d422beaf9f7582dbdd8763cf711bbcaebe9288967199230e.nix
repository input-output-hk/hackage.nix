{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unbounded-delays-units"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "João Cristóvão <jmacristovao@gmail.com>";
      author = "João Cristóvão <jmacristovao@gmail.com>";
      homepage = "https://github.com/jcristovao/unbouded-delays-units";
      url = "";
      synopsis = "Thread delays and timeouts using proper time units";
      description = "Higher level interface to unbounded-delays lib, allowing you to specify\nthe time delays in whatever unit you prefer, us, ms, seconds, minutes, hours.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unbounded-delays" or ((hsPkgs.pkgs-errors).buildDepError "unbounded-delays"))
          (hsPkgs."units" or ((hsPkgs.pkgs-errors).buildDepError "units"))
          (hsPkgs."units-defs" or ((hsPkgs.pkgs-errors).buildDepError "units-defs"))
          ];
        buildable = true;
        };
      };
    }