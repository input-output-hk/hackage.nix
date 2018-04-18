{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-diagnostics";
          version = "0.0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-diagnostics#readme";
        url = "";
        synopsis = "Diagnostics library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-diagnostics = {
          depends  = [ hsPkgs.base ];
        };
      };
    }