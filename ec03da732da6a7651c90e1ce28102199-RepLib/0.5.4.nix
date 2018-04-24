{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "RepLib";
          version = "0.5.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stephanie Weirich <sweirich@cis.upenn.edu>";
        author = "Stephanie Weirich";
        homepage = "https://github.com/sweirich/replib";
        url = "";
        synopsis = "Generic programming library with representation types";
        description = "Generic programming library providing structural\npolymorphism and other features.";
        buildType = "Simple";
      };
      components = {
        RepLib = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") hsPkgs.type-equality;
        };
      };
    }