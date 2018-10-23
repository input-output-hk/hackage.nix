{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "script-monad";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Automattic, Inc.";
      maintainer = "nbloomf@gmail.com";
      author = "Nathan Bloomfield";
      homepage = "https://github.com/nbloomf/script-monad#readme";
      url = "";
      synopsis = "Transformer stack of error, reader, writer, state, and prompt monads";
      description = "Please see the README on GitHub at <https://github.com/nbloomf/script-monad#readme>";
      buildType = "Simple";
    };
    components = {
      "script-monad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "script-monad-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.script-monad)
          ];
        };
      };
      tests = {
        "script-monad-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.script-monad)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }