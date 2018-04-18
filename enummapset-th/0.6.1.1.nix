{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "enummapset-th";
          version = "0.6.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013−2015 Liyang HU";
        maintainer = "enummapset-th@liyang.hu";
        author = "Liyang HU";
        homepage = "https://github.com/tsurucapital/enummapset-th";
        url = "";
        synopsis = "TH-generated EnumSet/EnumMap wrappers around IntSet/IntMap.";
        description = "This package wraps @IntSet@ and @IntMap@ from @containers@, and provides\nfast sets and maps keyed on any data type with a well-behaved @Enum@\ninstance. Useful for derived @Enum@s, newtype'd @Int@s, or any data type\nthat can be packed into an @Int@: just implement @fromEnum@ and @toEnum@.\n\nThe boilerplate is generated using Template Haskell, so unlike\n@enummapset@ it's easier to maintain and keep up-to-date with\n@containers@. On the downside, it's less portable.\n\nNote that \"Data.EnumMap.Lazy\" and \"Data.EnumMap.Strict\" provide distinct\nnewtype wrappers, and their respective 'Functor' instances behave as\nexpected, unlike that of @IntMap@ which is alway lazy.";
        buildType = "Simple";
      };
      components = {
        enummapset-th = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
      };
    }