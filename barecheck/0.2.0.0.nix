{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "barecheck";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2014 Omari Norman";
        maintainer = "Omari Norman, omari@smileystation.com";
        author = "Omari Norman, omari@smileystation.com";
        homepage = "http://github.com/massysett/barecheck";
        url = "";
        synopsis = "QuickCheck implementations for common types";
        description = "Provides QuickCheck implementations for common types distributed\nwith GHC and in the Haskell Platform.  The implementations\nare NOT provided through the QuickCheck Arbitrary and\nCoArbitrary typeclasses; instead, they are provided through\nordinary, non-overloaded functions.  This avoids problems\nwith orphan instances.\n\nImplementations are provided through child modules of the\nmodule that provides the original type.  For example, for\n\"Data.Map\", look under \"Data.Map.Generators\",\n\"Data.Map.Shrinkers\", and \"Data.Map.Coarbitrary\".\nFor instance, a function that generates a Map is at\n'Data.Map.Generators.map', while a function providing\na coarbitrary implementation is at 'Data.Map.Coarbitrary.map'.\nObviously this can lead to name conflicts, both between\nmodules provided in this package and with other standard\nmodules, so keep this in mind when you do your imports.";
        buildType = "Simple";
      };
      components = {
        barecheck = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.time
          ];
        };
      };
    }