{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "statistics";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://darcs.serpentine.com/statistics";
        url = "";
        synopsis = "A library of statistical types, data, and functions.";
        description = "A library of statistical types, data, and functions.";
        buildType = "Simple";
      };
      components = {
        statistics = {
          depends  = [
            hsPkgs.base
            hsPkgs.erf
            hsPkgs.uvector
            hsPkgs.uvector-algorithms
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
        };
      };
    }