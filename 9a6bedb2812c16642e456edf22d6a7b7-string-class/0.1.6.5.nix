{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "string-class";
          version = "0.1.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com";
        author = "Byron James Johnson";
        homepage = "https://github.com/bairyn/string-class";
        url = "";
        synopsis = "String class library";
        description = "String class library.";
        buildType = "Simple";
      };
      components = {
        "string-class" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.tagged
          ];
        };
      };
    }