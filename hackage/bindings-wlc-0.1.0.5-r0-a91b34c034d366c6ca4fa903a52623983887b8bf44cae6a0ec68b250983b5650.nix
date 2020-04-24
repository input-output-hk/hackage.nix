{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-wlc"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Towns";
      maintainer = "mail@ashleytowns.id.au";
      author = "Ashley Towns";
      homepage = "http://github.com/aktowns/bindings-wlc#readme";
      url = "";
      synopsis = "Bindings against the wlc library";
      description = "Please see Readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          ];
        libs = [ (pkgs."wlc" or ((hsPkgs.pkgs-errors).sysDepError "wlc")) ];
        buildable = true;
        };
      tests = {
        "bindings-wlc-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-wlc" or ((hsPkgs.pkgs-errors).buildDepError "bindings-wlc"))
            ];
          buildable = true;
          };
        };
      };
    }