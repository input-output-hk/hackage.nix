{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pads-haskell";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "karl@cs.tufts.edu";
      author = "Kathleen Fisher and John Launchbury";
      homepage = "http://www.padsproj.org";
      url = "";
      synopsis = "PADS data description language for Haskell";
      description = "Massive amounts of useful data are stored and processed in\nad hoc formats for which common tools like parsers,\nprinters, query engines and format converters are not readily\navailable.  Pads/Haskell is a domain-specific language that\nfacilitates the generation of data processing tools for ad hoc\nformats. Pads/Haskell includes features such as\ndependent, polymorphic and recursive datatypes, which allow\nprogrammers to describe the syntax and semantics of ad hoc data in a\nconcise,  easy-to-read notation.";
      buildType = "Simple";
    };
    components = {
      "pads-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.Glob)
          (hsPkgs.regex-posix)
          (hsPkgs.bytestring)
          (hsPkgs.haskell-src)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.parsec)
          (hsPkgs.mainland-pretty)
          (hsPkgs.HUnit)
          (hsPkgs.byteorder)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.normaldistribution)
          (hsPkgs.th-lift)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.haskell-src)
            (hsPkgs.template-haskell)
            (hsPkgs.mainland-pretty)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.syb)
            (hsPkgs.parsec)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.Glob)
            (hsPkgs.bytestring)
            (hsPkgs.regex-posix)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.directory)
            (hsPkgs.byteorder)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }