{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simple-rope";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
        author = "Eugene Kirpichov <ekirpichov@gmail.com>";
        homepage = "http://github.com/jkff/haskell-rope";
        url = "";
        synopsis = "Memory-efficient strings with concatenation and splitting.";
        description = "A very simple but rather memory- and performance-efficient rope with logarithmic concatenation, access and splitting at an index or predicate. Differs from the current \"rope\" package (as of rope 0.6.1) by providing guaranteed logarithmic performance.";
        buildType = "Simple";
      };
      components = {
        "simple-rope" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.QuickCheck
          ];
        };
      };
    }