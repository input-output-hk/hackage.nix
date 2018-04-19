{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-fix";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/data-fix";
        url = "";
        synopsis = "Fixpoint data types";
        description = "Fixpoint types and recursion schemes. If you define your AST as\nfixpoint type, you get fold and unfold operations for free.\n\nThanks for contribution to: Matej Kollar, Herbert Valerio Riedel";
        buildType = "Simple";
      };
      components = {
        data-fix = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }