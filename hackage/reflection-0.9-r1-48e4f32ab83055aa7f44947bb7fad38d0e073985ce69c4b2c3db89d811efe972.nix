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
        name = "reflection";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2012 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett, Oleg Kiselyov and Chung-chieh Shan";
      homepage = "http://github.com/ekmett/reflection";
      url = "";
      synopsis = "Functional Pearl: Implicit Configurations";
      description = "This package provides an implementation of the ideas presented in the paper\n\\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov and\nChung-chieh Shan. However, the API has been modified to use @Rank2Types@ and @TypeFamilies@ and\nthe implementation has been streamlined to improve performance.\n\nThe original paper can be obtained from <http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>\n\n/Changes in 0.9/:\n\n* Faster internal implementation.\n\n* Removed @ReifiedNum@, @reflectNum@, and @reifyIntegral@; @reify@ and @reflect@ are\nconsiderably faster than the special case combinators were.\n\n/Changes in 0.8/:\n\n* Switched to using type families to avoid a problem where the user could cast\n@Proxy (s a) -> Proxy (s b)@ and get back a values with the wrong type under\nthe API in effect from 0.6. This API yields a much nicer example as well.\n\n* Removed @reflectT@ as it no longer makes sense.\n\n* Added a more advanced example @example/Constraints.hs@ using constraint kinds.\n\n/Changes in 0.7/:\n\n* Uses a much simpler construction where @reify@ now converts a @StablePtr@ to an\n@IntPtr@ and reifies that directly as an integral type rather than serializing\nand storing the StablePtr as a list of bytes as proposed in the original paper.\n\n* Removed @ReifiedStorable@ and @ReifiedNums@.\n\n* Since we have so many fewer classes now, @Data.Reflection.Internal@ was merged back\ninto @Data.Reflection@\n\n/Changes in 0.6/:\n\n* Removed the dependency on multiparameter type classes, functional\ndependencies, and flexible instances, by making @Reifies@ a single\nparameter type class in the same fashion as @ReifiesStorable@.\n\n* Moved the building blocks to @Data.Reflection.Internal@ to reduce API clutter.\n\n* Added @reflectT@\n\n/Changes in 0.5/:\n\n* Generalized the type signatures in reflect to allow you to pass any type\nwith kind @* -> *@ wrapped around the desired type as the phantom type\nargument rather than just a @Proxy@.\n\n/Changes in 0.4/:\n\n* Converted from `Data.Tagged` to using `Data.Proxy` for reflection. This\nreduces the need for helper functions and scoped type variables in user\ncode.";
      buildType = "Simple";
    };
    components = {
      "reflection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
        ];
      };
    };
  }