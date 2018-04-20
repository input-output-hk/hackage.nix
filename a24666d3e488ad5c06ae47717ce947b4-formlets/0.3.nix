{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "formlets";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Jeremy Yallop / Tupil";
        maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
        author = "Jeremy Yallop / Chris Eidhof";
        homepage = "";
        url = "";
        synopsis = "Formlets implemented in Haskell";
        description = "A modular way to build forms based on applicative functors, as\ndescribed in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>";
        buildType = "Simple";
      };
      components = {
        formlets = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.xhtml
            hsPkgs.applicative-extras
            hsPkgs.bytestring
          ];
        };
      };
    }