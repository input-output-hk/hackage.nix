{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hoppy-docs"; version = "0.7.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2015-2019 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Documentation";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains documentation linking to the other Hoppy packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
          (hsPkgs."hoppy-generator" or ((hsPkgs.pkgs-errors).buildDepError "hoppy-generator"))
          (hsPkgs."hoppy-runtime" or ((hsPkgs.pkgs-errors).buildDepError "hoppy-runtime"))
          ];
        buildable = true;
        };
      };
    }