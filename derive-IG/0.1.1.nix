{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "derive-IG";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Hiromi ISHII";
        maintainer = "Hiromi ISHII <konn.jinro _at_ gmail.com>";
        author = "Hiromi ISHII";
        homepage = "http://github.com/konn/derive-IG";
        url = "";
        synopsis = "Macro to derive instances for Instant-Generics using Template Haskell";
        description = "Macro to derive instances for Instant-Generics using Template Haskell";
        buildType = "Simple";
      };
      components = {
        derive-IG = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.instant-generics
          ];
        };
      };
    }