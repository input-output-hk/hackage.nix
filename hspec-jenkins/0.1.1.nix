{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-jenkins";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "eagletmt@gmail.com";
        author = "Kohei Suzuki";
        homepage = "https://github.com/worksap-ate/hspec-jenkins";
        url = "";
        synopsis = "Jenkins-friendly XML formatter for Hspec";
        description = "Jenkins-friendly XML formatter for Hspec";
        buildType = "Simple";
      };
      components = {
        hspec-jenkins = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.blaze-markup
          ];
        };
      };
    }