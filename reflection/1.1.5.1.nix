{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      slow = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reflection";
          version = "1.1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2012 Edward A. Kmett,\n2012 Elliott Hird,\n2004 Oleg Kiselyov and Chung-chieh Shan";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett, Elliott Hird, Oleg Kiselyov and Chung-chieh Shan";
        homepage = "http://github.com/ekmett/reflection";
        url = "";
        synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
        description = "This package provides an implementation of the ideas presented in the paper\n\\\"Functional Pearl: Implicit Configurations\\\" by Oleg Kiselyov and\nChung-chieh Shan. However, the API has been streamlined to improve performance.\n\nThe original paper can be obtained from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>.\n\n/Changes in 1.1.5/:\n\n* Both implementations now work on Hugs; the fast implementation ascends\nfrom the ranks of completely unportable black magic to being merely\n/mostly/ unportable black magic.\n\n/Changes from 0.5 to 1.1/:\n\n* Much faster implementation available that is about 50 /times/ faster than\n0.9 and which runs purely on black magic. This version is now used by\ndefault. To turn it off install with the @slow@ flag. If you encounter a\nproblem with the implementation, please contact the author.\n\n* Removed @ReifiedNum@, @reflectNum@, and @reifyIntegral@; @reify@ and\n@reflect@ are about 3 orders of magnitude faster than the special case\ncombinators were.\n\n/Changes in 0.5/:\n\n* Generalized the type signatures in reflect to allow you to pass any type\nwith kind @* -> *@ wrapped around the desired type as the phantom type\nargument rather than just a @Proxy@.\n\n/Changes in 0.4/:\n\n* Converted from `Data.Tagged` to using `Data.Proxy` for reflection. This\nreduces the need for helper functions and scoped type variables in user\ncode.";
        buildType = "Simple";
      };
      components = {
        reflection = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
          ];
        };
      };
    }