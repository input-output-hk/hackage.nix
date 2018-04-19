{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fsharp";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heather Cynede <Cynede@Gentoo.org>";
        author = "Heather Cynede";
        homepage = "";
        url = "";
        synopsis = "some F# operators, high priority pipes";
        description = "Some F# operators, high priority pipes, etc...";
        buildType = "Simple";
      };
      components = {
        fsharp = {
          depends  = [ hsPkgs.base ];
        };
      };
    }