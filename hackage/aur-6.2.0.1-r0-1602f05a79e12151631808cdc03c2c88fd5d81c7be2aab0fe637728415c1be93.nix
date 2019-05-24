{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "aur"; version = "6.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2014 - 2019 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/aurapm/aura";
      url = "";
      synopsis = "Access metadata from the Arch Linux User Repository.";
      description = "Access package information from Arch Linux's AUR via its RPC interface. The\nmain exposed functions reflect those of the RPC. `info` gets metadata for\none package. `search` gets limited metadata for packages that match a given\nregex. By default this library supports version 5 of the RPC, and hence\nversion 4.2+ of the AUR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          ];
        };
      tests = {
        "aur-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.aur)
            (hsPkgs.http-client-tls)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }