{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "JustParse";
          version = "2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "grantslatton@gmail.com";
        author = "Grant Slatton";
        homepage = "https://github.com/grantslatton/JustParse";
        url = "";
        synopsis = "A simple and comprehensive Haskell parsing library";
        description = "A simple and comprehensive Haskell parsing library";
        buildType = "Simple";
      };
      components = {
        JustParse = {
          depends  = [ hsPkgs.base ];
        };
      };
    }