{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "foundation-edge";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>, 2017- Foundation Maintainers";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/haskell-foundation/foundation";
        url = "";
        synopsis = "foundation's edge with the conventional set of packages";
        description = "A set of functions to allow interaction with more conventional\nand well established packages like bytestring, text, vector\n\nCurrent support:\n\n* bytestring\n\n* text";
        buildType = "Simple";
      };
      components = {
        foundation-edge = {
          depends  = [
            hsPkgs.foundation
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }