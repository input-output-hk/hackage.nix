{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "classy-miso";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Robert Fischer";
      maintainer = "smokejumperit+stack@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/Classy-Miso#README.md";
      url = "";
      synopsis = "Typeclass based support for Miso, the Tasty Web Framework for Haskell.";
      description = "Please see the README on Github at <https://github.com/RobertFischer/Classy-Miso#README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.miso)
          (hsPkgs.rfc)
          (hsPkgs.megaparsec)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.containers)
          (hsPkgs.url)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optionals (compiler.isGhcjs && true) [
          (hsPkgs.aeson)
          (hsPkgs.bifunctors)
        ];
      };
      exes = {
        "classy-miso-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-miso)
            (hsPkgs.miso)
            (hsPkgs.rfc)
          ];
        };
      };
      tests = {
        "ghcjs-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.classy-miso)
            (hsPkgs.miso)
            (hsPkgs.rfc)
          ];
        };
      };
    };
  }