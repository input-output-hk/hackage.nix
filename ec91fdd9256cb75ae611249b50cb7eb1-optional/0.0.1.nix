{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "optional";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010-2013 Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/optional";
        url = "";
        synopsis = "Using type-classes for optional function arguments";
        description = "Using type-classes for optional function arguments. Although this implements that which is available in other programming languages, and is a lot safer than in those environments, it is still of dubious morality. Use with care, question and caution.";
        buildType = "Custom";
      };
      components = {
        optional = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }