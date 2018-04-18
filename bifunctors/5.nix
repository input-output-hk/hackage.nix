{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      semigroups = true;
      tagged = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bifunctors";
          version = "5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/bifunctors/";
        url = "";
        synopsis = "Bifunctors";
        description = "Bifunctors";
        buildType = "Simple";
      };
      components = {
        bifunctors = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.tagged hsPkgs.tagged) ++ pkgs.lib.optional _flags.semigroups hsPkgs.semigroups;
        };
      };
    }