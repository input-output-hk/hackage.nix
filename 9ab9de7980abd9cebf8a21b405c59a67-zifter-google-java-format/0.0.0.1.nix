{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zifter-google-java-format";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "http://cs-syd.eu";
        url = "";
        synopsis = "zifter-google-java-format";
        description = "zifter-google-java-format";
        buildType = "Simple";
      };
      components = {
        "zifter-google-java-format" = {
          depends  = [
            hsPkgs.base
            hsPkgs.zifter
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.process
            hsPkgs.safe
            hsPkgs.filepath
          ];
        };
      };
    }