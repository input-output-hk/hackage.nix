{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "minirotate";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        author = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
        homepage = "http://tener.github.com/haskell-minirotate";
        url = "";
        synopsis = "Minimalistic file rotation utility";
        description = "minirotate is minimalistic file rotation utility designed for calling from cron or similar tool.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "minirotate" = {
            depends  = [
              hsPkgs.filepath
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.data-accessor-template
              hsPkgs.data-accessor
              hsPkgs.old-time
              hsPkgs.old-locale
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.mtl
            ];
          };
        };
      };
    }