{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "pipes-parse";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Parsing infrastructure for the pipes ecosystem";
        description = "This package defines the generic machinery necessary for common\nparsing tasks using @pipes@:\n\n* /End of input/: Detect and handle end of input\n\n* /Push-back/: Save unused input for later steps\n\n* /Lens Support/: Mix proxies with different leftover buffers using lenses\n\n* /Compatibility/: Transparently upgrade proxies to work with @pipes-parse@\n\nImport @Control.Proxy.Parse@ to use this library.\n\nRead @Control.Proxy.Parse.Tutorial@ for an introductory tutorial.";
        buildType = "Simple";
      };
      components = {
        pipes-parse = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes
          ];
        };
      };
    }