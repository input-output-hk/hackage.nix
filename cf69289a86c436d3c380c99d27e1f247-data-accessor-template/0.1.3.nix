{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "data-accessor-template";
          version = "0.1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>, Luke Palmer <lrpalmer@gmail.com>";
        homepage = "http://www.haskell.org/haskellwiki/Record_access";
        url = "http://code.haskell.org/data-accessor/";
        synopsis = "Utilities for accessing and manipulating fields of records";
        description = "Automate generation of @Accessor@'s of the @data-accessor@ package\nby Template Haskell functions.";
        buildType = "Simple";
      };
      components = {
        data-accessor-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-accessor
            hsPkgs.template-haskell
          ];
        };
      };
    }