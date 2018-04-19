{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-wlc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Ashley Towns";
        maintainer = "mail@ashleytowns.id.au";
        author = "Ashley Towns";
        homepage = "http://github.com/aktowns/bindings-wlc#readme";
        url = "";
        synopsis = "Bindings against the wlc library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        bindings-wlc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.wlc ];
        };
        tests = {
          bindings-wlc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bindings-wlc
            ];
          };
        };
      };
    }