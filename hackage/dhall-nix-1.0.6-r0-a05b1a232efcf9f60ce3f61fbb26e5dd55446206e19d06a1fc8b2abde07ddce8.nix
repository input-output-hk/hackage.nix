{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall-nix"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Dhall to Nix compiler";
      description = "Use this package if you want to compile Dhall expressions to the Nix language.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.Nix\" module if you want to use this package as a library\n\n* Use the @dhall-to-nix@ program from this package if you want an executable\n\nThe \"Dhall.Nix\" module also contains instructions for how to use this package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.dhall)
          (hsPkgs.hnix)
          (hsPkgs.neat-interpolation)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "dhall-to-nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dhall-nix)
            (hsPkgs.hnix)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.trifecta)
            ];
          };
        };
      };
    }