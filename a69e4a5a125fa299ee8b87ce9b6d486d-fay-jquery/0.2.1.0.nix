{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-jquery";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Adam Bergmark, Brian Victor, Chris Done";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Adam Bergmark, Brian Victor, Chris Done";
        homepage = "https://github.com/faylang/fay-jquery";
        url = "";
        synopsis = "jQuery binding.";
        description = "jQuery binding.";
        buildType = "Simple";
      };
      components = {
        "fay-jquery" = {
          depends  = [ hsPkgs.fay-base ];
        };
      };
    }