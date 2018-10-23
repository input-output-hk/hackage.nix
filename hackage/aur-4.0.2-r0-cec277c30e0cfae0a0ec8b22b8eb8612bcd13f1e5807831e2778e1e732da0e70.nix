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
        version = "4.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/haskell-aur";
      url = "";
      synopsis = "Access metadata from the Arch Linux User Repository.";
      description = "Access package information from Arch Linux's AUR via its\nRPC interface. The main exposed functions reflect\nthose of the RPC:\n\n* info:      Get metadata for one package.\n\n* multiinfo: Get metadata for many packages at once.\n\n* search:    Get limited metadata for packages that\nmatch a given regex.\n\n* msearch:   Get metadata for all packages maintained\nby a given user.\n\nBy default this library supports version 3 of the RPC,\nand hence version 3.2+ of the AUR.";
      buildType = "Simple";
    };
    components = {
      "aur" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
    };
  }