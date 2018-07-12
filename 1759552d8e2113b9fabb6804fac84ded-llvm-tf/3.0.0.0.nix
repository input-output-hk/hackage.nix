{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-tf";
          version = "3.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thieleman <llvm@henning-thielemann.de>";
        author = "Henning Thieleman, Bryan O'Sullivan, Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Bindings to the LLVM compiler toolkit using type families.";
        description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\n* New in 3.0.0.0:\nThe low-level bindings have been split into the llvm-base package.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe first two version numbers match the version of LLVM.\nIn order to be able to improve the Haskell API for the same version of LLVM,\nI use the first three numbers of the Cabal package version\nas the major version in the sense of the Package Versioning Policy PVP.\nThat is, a bump from 3.0.0 to 3.0.1 may contain substantial API changes,\na bump from 3.0.0.0 to 3.0.0.1 may contain API extensions,\nand a bump from 3.0.0.0.0 to 3.0.0.0.1 may contain API-preserving bugfixes.";
        buildType = "Simple";
      };
      components = {
        "llvm-tf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.llvm-base
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.tfp
            hsPkgs.containers
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.vecLib;
        };
      };
    }