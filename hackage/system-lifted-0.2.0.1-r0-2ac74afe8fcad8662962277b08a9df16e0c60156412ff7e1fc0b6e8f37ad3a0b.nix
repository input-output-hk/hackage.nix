{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "system-lifted";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jmacristovao@gmail.com";
      author = "João Cristóvão";
      homepage = "https://github.com/jcristovao/system-lifted";
      url = "";
      synopsis = "Lifted versions of System functions.";
      description = "Lifted versions of functions provided in System.Directory,\nSystem.Environment and others.\nUser can derive instances for EitherT, ErrorT, MaybeT, etc.";
      buildType = "Simple";
    };
    components = {
      "system-lifted" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.either)
            (hsPkgs.template-haskell)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }