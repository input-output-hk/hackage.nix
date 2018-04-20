{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prelude-safeenum";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012--2013 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "A redefinition of the Prelude's Enum class in order to render it safe.";
        description = "A redefinition of the Prelude's Enum class in order to render\nit safe. That is, the Haskell Language Report defines pred,\nsucc, fromEnum, and toEnum to be partial functions when the\ntype is Bounded, but this is unacceptable. We define a new\ntype-class hierarchy for enumeration which is safe and also\ngeneralizes to cover types which can only be enumerated in one\ndirection.";
        buildType = "Simple";
      };
      components = {
        prelude-safeenum = {
          depends  = [ hsPkgs.base ];
        };
      };
    }