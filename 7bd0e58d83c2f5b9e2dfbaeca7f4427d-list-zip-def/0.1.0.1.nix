{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-zip-def";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "muesli4@gmail.com";
        author = "Moritz Bruder";
        homepage = "";
        url = "";
        synopsis = "Provides zips where the combining doesn't stop premature, but instead uses default values.";
        description = "Zip multiple lists together, but don't loose any information. No need to inefficiently check the lengths before and nothing gets evaluated until you reach it in the result list.";
        buildType = "Simple";
      };
      components = {
        list-zip-def = {
          depends  = [ hsPkgs.base ];
        };
      };
    }