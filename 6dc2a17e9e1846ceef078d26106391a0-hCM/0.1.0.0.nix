{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hCM";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Marek Suchánek";
        maintainer = "suchama4@fit.cvut.cz";
        author = "Marek Suchánek <suchama4@fit.cvut.cz>";
        homepage = "https://github.com/MarekSuchanek/hCM";
        url = "";
        synopsis = "Conceptual modelling support for Haskell";
        description = "hCM is the result of finding a suitable way how to support conceptual\nmodelling within Haskell programming language in the most simple but smart manner.\nhCM should allow you to build conceptual model with Haskell freely without any\nrestrictions about selected representation of entities, relationships and model\nitself.";
        buildType = "Simple";
      };
      components = {
        hCM = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
            hsPkgs.hashable
          ];
        };
        exes = {
          hCM = {
            depends  = [
              hsPkgs.base
              hsPkgs.hCM
              hsPkgs.hashable
            ];
          };
        };
        tests = {
          hCM-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hCM
              hsPkgs.hashable
            ];
          };
        };
      };
    }