{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "seclib";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "russo@chalmers.se";
        author = "Alejandro Russo";
        homepage = "";
        url = "";
        synopsis = "A simple library for static information-flow security in Haskell";
        description = "This package presents a static library to enforce\n/Information-Flow Control/ (IFC) in Haskell.\nIFC allows untrusted code to manipulate sensitive\ndata (i.e., secret information), while preserving its confidentiality.\n\nTo illustrate the use case scenario for /SecLib/, let us consider two Haskell\nprogrammers , Alice and Bob, who do not trust each other. Image that Alice\nwishes to use Bob's code to check the strength of Alice's sensitive passwords.\nClearly, Alice is concern that the passwords could be leaked if they are run\nwith Bob's code. How could Alice be sure that Bob's code will preserve the\nconfidentiality of Alice's password? One option is to do code review---a very\ntime consuming approach. Instead, Alice demands that Bob's code uses the\nsecurity monads provided by this library (i.e., 'Sec' and 'SecIO'). Now, Alice\nonly requires, by using the type-system, that Bob's code is written using such\nmonads. Importantly, Alice needs to use Safe Haskell to compile Bob's\nuntrusted code using the flags @-XSafe@. This package provides the files\n@Alice.hs@ and @Bob.hs@. The former calls into functions provided by the\nlatter and the library guarantees that secrets are not unintentionally or\nmaliciously leaked.\n\nThe library is a modern and simplified version (updated to exploit the last\nGHC type-system features) of the work presented in\n/A Library for Light-weight Information-Flow Security in Haskell/ by\nAlejandro Russo, Koen Claessen and\nJohn Hughes. In Proc. of the ACM SIGPLAN 2008 Haskell Symposium. With respect\nto the version 1.0.0.0, this version has less side-effectful features (e.g.,\nno secure file handlers and sockets) as well as declassification combinators. However,\nit presents a simpler and more intuitive interface which can be easily\nextended to cover a rich-set of side-effects.";
        buildType = "Simple";
      };
      components = {
        "seclib" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }