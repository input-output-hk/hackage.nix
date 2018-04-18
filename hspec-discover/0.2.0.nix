{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-discover";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2012-2013 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Automatically discover and run Hspec tests";
        description = "This has been integrated into hspec.  There is no need to use\nthis package anymore!";
        buildType = "Simple";
      };
      components = {
        hspec-discover = {
          depends  = [ hsPkgs.hspec ];
        };
      };
    }