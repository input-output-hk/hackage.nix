{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aur";
        version = "6.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/aurapm/aura";
      url = "";
      synopsis = "Access metadata from the Arch Linux User Repository.";
      description = "Access package information from Arch Linux's AUR via its\nRPC interface. The main exposed functions reflect\nthose of the RPC:\n\n* info:      Get metadata for one package.\n\n* search:    Get limited metadata for packages that\nmatch a given regex.\n\nBy default this library supports version 5 of the RPC,\nand hence version 4.2+ of the AUR.";
      buildType = "Simple";
    };
    components = {
      "aur" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
        ];
      };
      tests = {
        "aur-test" = {
          depends  = [
            (hsPkgs.aur)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
          ];
        };
      };
    };
  }