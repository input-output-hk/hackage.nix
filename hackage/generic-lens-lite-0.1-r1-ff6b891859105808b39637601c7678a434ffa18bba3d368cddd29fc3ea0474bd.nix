{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "generic-lens-lite"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Edward Kmett, 2020 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Edward Kmett, Csongor Kiss, Oleg Grenrus";
      homepage = "https://github.com/phadej/generic-lens-lite";
      url = "";
      synopsis = "Monomorphic field lens like with generic-lens";
      description = "Derivation of (monomorphic, i.e. not type-changing) lens, like generic-lens.\n\nThe package have minimal dependecies and minimal API:\n\n@\nclass HasField (name :: Symbol) r a | name r -> a\nfield :: HasField name r a => Lens' r a\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."generic-lens-lite" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens-lite"))
            ];
          buildable = true;
          };
        };
      };
    }