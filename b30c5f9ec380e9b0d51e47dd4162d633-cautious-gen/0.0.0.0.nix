{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cautious-gen";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Nick Van den Broeck";
        maintainer = "nick.van.den.broeck666@gmail.com";
        author = "Nick Van den Broeck";
        homepage = "https://github.com/Nickske666/cautious#readme";
        url = "";
        synopsis = "";
        description = "GenValid instances for Cautious and CautiousT";
        buildType = "Simple";
      };
      components = {
        cautious-gen = {
          depends  = [
            hsPkgs.base
            hsPkgs.cautious
            hsPkgs.genvalidity
          ];
        };
        tests = {
          cautious-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.cautious
              hsPkgs.cautious-gen
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-hspec-aeson
              hsPkgs.hspec
            ];
          };
        };
      };
    }