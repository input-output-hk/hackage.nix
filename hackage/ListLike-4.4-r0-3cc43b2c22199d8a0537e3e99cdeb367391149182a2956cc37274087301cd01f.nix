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
      specVersion = "1.8";
      identifier = {
        name = "ListLike";
        version = "4.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2008 John Goerzen";
      maintainer = "John Lato <jwlato@gmail.com>";
      author = "John Goerzen";
      homepage = "http://github.com/JohnLato/listlike";
      url = "";
      synopsis = "Generic support for list-like structures";
      description = "Generic support for list-like structures in Haskell.\n\nThe ListLike module provides a common interface to the various Haskell\ntypes that are list-like.  Predefined interfaces include standard\nHaskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom\ntypes can easily be made ListLike instances as well.\n\nListLike also provides for String-like types, such as String and\nByteString, for types that support input and output, and for types that can handle\ninfinite lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.dlist)
          (hsPkgs.fmlist)
          (hsPkgs.utf8-string)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "listlike-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ListLike)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dlist)
            (hsPkgs.fmlist)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }