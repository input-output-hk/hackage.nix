{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HList";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "oleg@pobox.com";
        author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (Imperial College, London)";
        homepage = "";
        url = "";
        synopsis = "Heterogeneous lists";
        description = "HList is a record system providing strongly typed heterogenous lists, records,\ntype-indexed products (TIP) and co-products; licensed under the MIT X License.";
        buildType = "Simple";
      };
      components = {
        HList = {
          depends  = [ hsPkgs.base ];
        };
      };
    }