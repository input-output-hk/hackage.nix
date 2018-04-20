{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      template_2_4 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-accessor-template";
          version = "0.2.1.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Luke Palmer <lrpalmer@gmail.com>,\nHenning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Record_access";
        url = "";
        synopsis = "Utilities for accessing and manipulating fields of records";
        description = "Automate generation of @Accessor@'s of the @data-accessor@ package\nby Template Haskell functions.";
        buildType = "Simple";
      };
      components = {
        data-accessor-template = {
          depends  = [
            hsPkgs.data-accessor
            hsPkgs.utility-ht
            hsPkgs.base
          ] ++ [
            hsPkgs.template-haskell
          ];
        };
      };
    }