{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "oneOfN";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/oneOfN";
        url = "";
        synopsis = "Anonymous coproduct type";
        description = "Anonymous coproduct type (generalization of Either to\nchoices among other than 2 cases)";
        buildType = "Simple";
      };
      components = {
        oneOfN = {
          depends  = [ hsPkgs.base ];
        };
      };
    }