{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes";
          version = "3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012, 2013 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Compositional pipelines";
        description = "\\\"Coroutines done right\\\".  This library generalizes\niteratees\\/enumerators\\/enumeratees simply and elegantly.\n\nAdvantages over traditional iteratee\\/coroutine implementations:\n\n* /Concise API/: Use three simple commands: ('>->'), 'request', and 'respond'\n\n* /Bidirectionality/: Implement duplex channels\n\n* /Blazing fast/: Implementation tuned for speed\n\n* /Elegant semantics/: Use practical category theory\n\n* /Extension Framework/: Mix and match extensions and create your own\n\n* /Lightweight Dependency/: @pipes@ depends only on @transformers@ and\ncompiles rapidly\n\n* /Extensive Documentation/: Second to none!\n\nImport \"Control.Proxy\" to use the library.\n\nRead \"Control.Proxy.Tutorial\" for a really extensive tutorial.";
        buildType = "Simple";
      };
      components = {
        pipes = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }