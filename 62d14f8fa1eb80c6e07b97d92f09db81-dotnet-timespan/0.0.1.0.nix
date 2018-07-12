{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dotnet-timespan";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "http://github.com/YoEight/dotnet-timespan";
        url = "";
        synopsis = ".NET TimeSpan";
        description = ".NET TimeSpan";
        buildType = "Simple";
      };
      components = {
        "dotnet-timespan" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }