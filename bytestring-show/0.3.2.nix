{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bytestring-show";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dan Doel <dan.doel@gmail.com>";
        author = "Dan Doel";
        homepage = "http://code.haskell.org/~dolio/";
        url = "";
        synopsis = "Efficient conversion of values into readable byte strings.";
        description = "Efficient conversion of values into readable byte strings.";
        buildType = "Simple";
      };
      components = {
        bytestring-show = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.integer;
        };
      };
    }