{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "phone-metadata";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
        author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Phonenumber Metadata based on Google's libphonenumber";
        description = "Phonenumber Metadata based on Google's libphonenumber";
        buildType = "Simple";
      };
      components = {
        "phone-metadata" = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-pcre
            hsPkgs.containers
            hsPkgs.hxt
            hsPkgs.text
          ];
        };
      };
    }