{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "mvc";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Model-view-controller";
        description = "Use the @mvc@ library to distill concurrent programs into pure and\nsingle-threaded programs using the @Model@-@View@-@Controller@ pattern.  This\ntransformation lets you:\n\n* replay your program deterministically,\n\n* do property-based testing of your model (like @QuickCheck@), and:\n\n* equationally reason about your pure core.";
        buildType = "Simple";
      };
      components = {
        mvc = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.contravariant
            hsPkgs.managed
            hsPkgs.mmorph
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.transformers
          ];
        };
      };
    }