{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "explicit-iomodes";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "File handles with explicit IOModes";
        description = "The module @System.IO.ExplicitIOModes@ exports a\n@Handle@ to a file which is parameterized with the\nIOMode the handle is in. All operations on handles\nexplicitly specify the needed IOMode. This way it is\nimpossible to read from a write-only handle or write to\na read-only handle for example.";
        buildType = "Simple";
      };
      components = {
        "explicit-iomodes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.tagged
          ];
        };
      };
    }