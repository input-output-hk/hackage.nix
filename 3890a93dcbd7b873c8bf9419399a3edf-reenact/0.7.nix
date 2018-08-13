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
      specVersion = "1.2";
      identifier = {
        name = "reenact";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A reimplementation of Conal Elliott's Reactive.";
      description = "Reenact is a reimplementation of the \"Reactive\" library by Conal Elliot.\nIt preserves semantics and most operators of the original library. In\nparticular the @Monoid@, @Applicative@ and @Monad@ instances for\n@Events@, @Reactives@ and @Behaviours@ are available and have the original semantics.\nThe implementation however is completely different, based on asynchronous\nchannels instead of the @unamb@ operator.";
      buildType = "Simple";
    };
    components = {
      "reenact" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.hamid)
          (hsPkgs.HCodecs)
          (hsPkgs.hosc)
          (hsPkgs.vector-space)
        ];
      };
    };
  }