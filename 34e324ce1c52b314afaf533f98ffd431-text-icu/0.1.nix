{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "text-icu";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Bindings to the ICU library";
        description = "Haskell bindings to the International Components for\nUnicode (ICU) libraries.  These libraries provide\nrobust and full-featured Unicode services on a wide\nvariety of platforms.";
        buildType = "Simple";
      };
      components = {
        text-icu = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") hsPkgs.base;
          libs = [
            pkgs.icui18n
            pkgs.icuuc
            pkgs.icudata
          ];
        };
      };
    }