{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ArrayRef";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bulat Ziganshin <Bulat.Ziganshin@gmail.com>";
        author = "Bulat Ziganshin";
        homepage = "http://haskell.org/haskellwiki/Library/ArrayRef";
        url = "";
        synopsis = "Unboxed references, dynamic arrays and more";
        description = "This array library supports: unboxed references,\nMonad-independent references, syntax sugar for mutable types,\na reimplemented Arrays library, changes in MArray usage,\nand using dynamic (resizable) arrays";
        buildType = "Simple";
      };
      components = {
        "ArrayRef" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }