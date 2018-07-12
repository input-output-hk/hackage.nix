{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safecopy";
          version = "0.8.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "David Himmelstrup, Felipe Lessa";
        homepage = "http://acid-state.seize.it/safecopy";
        url = "";
        synopsis = "Binary serialization with version control.";
        description = "An extension to Data.Serialize with built-in version control.";
        buildType = "Simple";
      };
      components = {
        "safecopy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }