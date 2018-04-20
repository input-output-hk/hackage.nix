{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dynamic-linker-template";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hsyl20@gmail.com";
        author = "Sylvain HENRY";
        homepage = "http://github.com/hsyl20/dynamic-linker-template";
        url = "";
        synopsis = "Automatically derive dynamic linking methods from a data type.";
        description = "This package uses Template Haskell to generate dynamic linking FFI methods from a\nrecord by using its field names. A load function is generated to create an instance\nof the data from a library path.\n\nOptional symbols are supported (use Maybe types in the data structure).\n\nA String->String method can be provided to deal with symbols whose names are not\nexactly the same as field names.\n\nSee <https://github.com/hsyl20/dynamic-linker-template/blob/master/Tests/Test.hs> for an example.";
        buildType = "Simple";
      };
      components = {
        dynamic-linker-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.unix
            hsPkgs.containers
          ];
        };
      };
    }