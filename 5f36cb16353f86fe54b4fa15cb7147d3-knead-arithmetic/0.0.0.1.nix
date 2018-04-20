{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "knead-arithmetic";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/knead-arithmetic/";
        url = "";
        synopsis = "Linear algebra and interpolation using LLVM JIT";
        description = "Linear algebra and interpolation using LLVM JIT via the @knead@ package.";
        buildType = "Simple";
      };
      components = {
        knead-arithmetic = {
          depends  = [
            hsPkgs.knead
            hsPkgs.llvm-extra
            hsPkgs.llvm-tf
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
      };
    }