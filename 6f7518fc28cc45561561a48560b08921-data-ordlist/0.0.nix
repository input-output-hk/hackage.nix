{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-ordlist";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Leon P Smith <leon@melding-monads.com>";
        homepage = "";
        url = "";
        synopsis = "Set and bag operations on ordered lists";
        description = "Ordered Lists";
        buildType = "Simple";
      };
      components = {
        data-ordlist = {
          depends  = [ hsPkgs.base ];
        };
      };
    }