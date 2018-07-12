{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "list-extras";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007--2008 wren ng thornton";
        maintainer = "wren@cpan.org";
        author = "wren ng thornton";
        homepage = "";
        url = "";
        synopsis = "Common not-so-common functions for lists";
        description = "Common not-so-common functions for lists.\n\nSince \"Data.List.Extras\" is prime realestate for\nextensions to \"Data.List\", if you have something\nyou'd like to contribute feel free to contact the\nmaintainer (I'm friendly). I'm amenable to adopting\ncode if you think your functions aren't enough for\na package on their own. Or if you would rather\nmaintain a separate package I can share the\n@Data.List.Extras.Foo@ namespace.";
        buildType = "Simple";
      };
      components = {
        "list-extras" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }