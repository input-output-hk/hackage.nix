{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "aur";
        version = "6.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/aurapm/aura";
      url = "";
      synopsis = "Access metadata from the Arch Linux User Repository.";
      description = "Access package information from Arch Linux\\'s AUR via its RPC interface. The main exposed functions reflect those of the RPC.\n`info` gets metadata for one package. `search` gets limited metadata for packages that match a given regex.\nBy default this library supports version 5 of the RPC, and hence version 4.2+ of the AUR.";
      buildType = "Simple";
    };
    components = {
      "aur" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.errors)
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
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }