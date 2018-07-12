{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conkin";
          version = "1.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "noah.easterly@gmail.com";
        author = "Noah Luck Easterly";
        homepage = "http://github.com/rampion/conkin";
        url = "";
        synopsis = "Tools for functors from Hask^k to Hask";
        description = "Tools for functors from Hask^k to Hask";
        buildType = "Simple";
      };
      components = {
        "conkin" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.pretty-show
            ];
          };
          "readme" = {
            depends  = [
              hsPkgs.base
              hsPkgs.markdown-unlit
              hsPkgs.doctest
              hsPkgs.pretty-show
              hsPkgs.data-default
              hsPkgs.conkin
            ];
          };
        };
      };
    }