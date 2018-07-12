{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unexceptionalio";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2013 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/unexceptionalio";
        url = "";
        synopsis = "IO without any non-error, synchronous exceptions";
        description = "When you've caught all the exceptions that can be handled safely,\nthis is what you're left with.";
        buildType = "Simple";
      };
      components = {
        "unexceptionalio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.transformers
          ];
        };
      };
    }