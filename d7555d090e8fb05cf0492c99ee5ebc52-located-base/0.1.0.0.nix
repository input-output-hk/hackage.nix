{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "located-base";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Eric Seidel 2015";
        maintainer = "eric@seidel.io";
        author = "Eric Seidel";
        homepage = "http://github.com/gridaphobe/located-base";
        url = "";
        synopsis = "Location-aware variants of partial functions";
        description = "This library provides variants of standard partial functions\nthat include their call-site in the error message when they crash.\n\nFor example:\n\n@\nghci> 'Data.List.Located.head' []\n*** Exception: Prelude.head: empty list\nCallstack:\n\\ \\ error, called at src\\/Data\\/List\\/Located.hs:19:14 in locat_KhGZ7Rz1bn9DKFeFxhawNB:Data.List.Located\n\\ \\ head, called at \\<interactive\\>:6:1 in interactive:Ghci1\n@";
        buildType = "Simple";
      };
      components = {
        located-base = {
          depends  = [ hsPkgs.base ];
        };
      };
    }