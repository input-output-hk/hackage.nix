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
      specVersion = "1.8.0.2";
      identifier = {
        name = "pipes";
        version = "3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012, 2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Coroutines done right\\\".  This library generalizes iteratees and coroutines\nsimply and elegantly.\n\nAdvantages over traditional iteratee\\/coroutine implementations:\n\n* /Concise API/: Use three simple commands: ('>->'), 'request', and 'respond'\n\n* /Bidirectionality/: Implement duplex channels\n\n* /Blazing fast/: Implementation tuned for speed\n\n* /Elegant semantics/: Use practical category theory\n\n* /Extension Framework/: Mix and match extensions and create your own\n\n* /ListT/: Correct implementation of ListT that interconverts with pipes\n\n* /Lightweight Dependency/: @pipes@ depends only on @transformers@ and\n@mmorph@ and compiles rapidly\n\n* /Extensive Documentation/: Second to none!\n\nImport \"Control.Proxy\" to use the library.\n\nRead \"Control.Proxy.Tutorial\" for an extensive tutorial.";
      buildType = "Simple";
    };
    components = {
      "pipes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
        ];
      };
    };
  }