{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      containers = true;
      contravariant = true;
      distributive = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "comonad";
          version = "5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2014 Edward A. Kmett,\nCopyright (C) 2004-2008 Dave Menendez";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonad/";
        url = "";
        synopsis = "Comonads";
        description = "Comonads";
        buildType = "Custom";
      };
      components = {
        comonad = {
          depends  = (([
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional _flags.containers hsPkgs.containers) ++ pkgs.lib.optional _flags.contravariant hsPkgs.contravariant) ++ pkgs.lib.optional _flags.distributive hsPkgs.distributive;
        };
        tests = {
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.comonad
              hsPkgs.doctest
            ];
          };
        };
      };
    }