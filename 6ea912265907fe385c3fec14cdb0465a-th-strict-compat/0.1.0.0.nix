{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-strict-compat";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "2017 Yuji Yamamoto";
        maintainer = "whosekiteneverfly@gmail.com";
        author = "Yuji Yamamoto";
        homepage = "https://gitlab.com/igrep/th-strict-compat";
        url = "";
        synopsis = "Compatibility shim for Bang and Strict in Template Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        th-strict-compat = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }