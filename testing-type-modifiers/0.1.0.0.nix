{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "testing-type-modifiers";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "jonas.duregard@gmail.com";
        author = "Jonas Duregård";
        homepage = "";
        url = "";
        synopsis = "Data type modifiers for property based testing";
        description = "Property based testing libraries such as QuickCheck tend to include type modifiers. Most of them\nare used to quantify over subsets of a type. For example a property on non-empty lists:\n\n@  prop_tail_length (NonEmpty xs) = length (tail xs) == length xs - 1 @\n\nThis library is intended to supply these modifiers to be used by testing libraries, in an effort to make\nproperties more portable between testing frameworks.\n\nFor every modifier there is also an access function that converts to the underlying type, which\nenables point-free style properties as such:\n\n@\nprop_tail_length2 = (> 0) . length . nonEmpty\n@";
        buildType = "Simple";
      };
      components = {
        testing-type-modifiers = {
          depends  = [ hsPkgs.base ];
        };
      };
    }