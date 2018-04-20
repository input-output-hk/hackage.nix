{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "moonshine";
          version = "1.2.2.1";
        };
        license = "Apache-2.0";
        copyright = "2014";
        maintainer = "rowens@sumall.com";
        author = "Rick Owens";
        homepage = "https://github.com/SumAll/moonshine";
        url = "";
        synopsis = "A web service framework for Haskell, similar in purpose to dropwizard.";
        description = "";
        buildType = "Simple";
      };
      components = {
        moonshine = {
          depends  = [
            hsPkgs.base
            hsPkgs.canteven-config
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.ekg
            hsPkgs.ekg-core
            hsPkgs.filepath
            hsPkgs.hslogger
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.yaml
          ];
        };
      };
    }