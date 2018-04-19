{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "extensible-exceptions";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Extensible exceptions";
        description = "Extensible exceptions for old implementations (e.g. GHC < 6.10).\nThis package is being lazily implemented, i.e. not all the new\nexception types or all the exception functions are necessarily\nimplemented yet.";
        buildType = "Simple";
      };
      components = {
        extensible-exceptions = {
          depends  = [ hsPkgs.base ];
        };
      };
    }