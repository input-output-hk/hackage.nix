{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dbus-qq"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "";
      url = "";
      synopsis = "Quasi-quoter for DBus functions";
      description = "This package contains a quasi-quoter to automatically convert functions of the form @[Variant] -> [Variant]@ to functions of the actual types, returning a tuple of the results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dbus-qq" or ((hsPkgs.pkgs-errors).buildDepError "dbus-qq"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }