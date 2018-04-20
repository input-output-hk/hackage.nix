{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "test-framework-sandbox";
          version = "0.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Benjamin Surma <benjamin.surma@gree.net>";
        author = "Benjamin Surma <benjamin.surma@gree.net>";
        homepage = "http://gree.github.io/haskell-test-sandbox/";
        url = "";
        synopsis = "test-sandbox support for the test-framework package";
        description = "Interfaces the test-sandbox with the test-framework packages to allow writing system tests\nin Haskell in a standard fashion.\n\nThe environment is preserved between test cases. This enables the user, for instance, to start\na process in one test and stop it in another.\n\nUsage examples can be found on the github page:\n<http://gree.github.io/haskell-test-sandbox/>\n\nA full example project is available at:\n<https://git.gree-dev.net/benjamin-surma/flare-tests/>\n\nExtensive documentation is available in the source code itself.";
        buildType = "Simple";
      };
      components = {
        test-framework-sandbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.temporary
            hsPkgs.test-framework
            hsPkgs.test-sandbox
            hsPkgs.transformers
          ];
        };
      };
    }