{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "kure";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2008 Andy Gill";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://ittc.ku.edu/~andygill/kure.php";
        url = "";
        synopsis = "Combinators for Strategic Programming";
        description = "KURE is a DSL for building rewriting DSLs.\nKURE shares combinator names and concepts with Stratego, but unlike Stratego, KURE is strongly typed.\nKURE is similar to Strafunski, but has a lightweight generic traversal mechanism using type families\nrather than SYB,\nand the KURE combinators are parameterized to provide the ability to have context sensitive rewrites.";
        buildType = "Simple";
      };
      components = {
        kure = {
          depends  = [ hsPkgs.base ];
        };
      };
    }