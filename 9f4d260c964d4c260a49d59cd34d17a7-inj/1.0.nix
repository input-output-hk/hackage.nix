{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inj";
          version = "1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
        author = "Vladislav Zavialov";
        homepage = "";
        url = "";
        synopsis = "A class for injective (one-to-one) functions";
        description = "";
        buildType = "Simple";
      };
      components = { "inj" = {}; };
    }