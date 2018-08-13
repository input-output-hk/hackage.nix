{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bindings-eskit";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Miller <andrew@amxl.com>";
      author = "Andrew Miller <andrew@amxl.com>";
      homepage = "http://github.com/a1kmm/bindings-eskit";
      url = "";
      synopsis = "Bindings to ESKit.";
      description = "Bindings to ESKit <http://www.marmakoide.org/api-doc/eskit/>.";
      buildType = "Simple";
    };
    components = {
      "bindings-eskit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.array)
        ];
        libs = [ (pkgs.eskit) ];
        pkgconfig = [
          (pkgconfPkgs.eskit)
        ];
      };
    };
  }