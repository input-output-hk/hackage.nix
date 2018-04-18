{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "strict-io";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Nicolas Pouillard";
        maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
        author = "Nicolas Pouillard";
        homepage = "";
        url = "";
        synopsis = "A library wrapping standard IO modules to provide strict IO.";
        description = "This library is a thin layer on top standard IO modules like System.IO\nthat re-expose these functions under a different type, namely SIO.";
        buildType = "Simple";
      };
      components = {
        strict-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.extensible-exceptions
          ];
        };
      };
    }