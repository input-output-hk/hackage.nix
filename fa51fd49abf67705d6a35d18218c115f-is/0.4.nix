{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "is";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "project-is@lopezjuan.com";
        author = "Víctor López Juan <victor@lopezjuan.com>";
        homepage = "";
        url = "";
        synopsis = "Generic pattern predicates";
        description = "Generate predicates of type (t → Bool) from constructors or patterns of type t.\nUses either Template Haskell or instances of Generic or Typeable.\nGenerating predicates from arbitrary patterns requires TH.";
        buildType = "Simple";
      };
      components = {
        is = {
          depends  = (([
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.template-haskell;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.is
            ];
          };
        };
      };
    }