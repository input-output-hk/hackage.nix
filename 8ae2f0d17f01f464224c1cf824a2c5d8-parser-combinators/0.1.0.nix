{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parser-combinators";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/parser-combinators";
        url = "";
        synopsis = "Lightweight package providing commonly useful parser combinators";
        description = "Lightweight package providing commonly useful parser combinators.";
        buildType = "Simple";
      };
      components = {
        "parser-combinators" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }