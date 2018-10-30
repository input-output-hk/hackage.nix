{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "chatty";
        version = "0.1.4.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "Some monad transformers and typeclasses to simplify I/O on a transformer stack.";
      description = "Some monad transformers and typeclasses for text in- and output on a function scope, including features like here-strings, file redirection, pipes and string expansion. Works best on a transformer stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.setenv)
          (hsPkgs.unix)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.ansi-terminal)
        ];
      };
    };
  }