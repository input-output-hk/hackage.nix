{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "ListLike"; version = "1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/listlike";
      url = "";
      synopsis = "Generic support for list-like structures";
      description = "Generic support for list-like structures in Haskell.\n\nThe ListLike module provides a common interface to the various Haskell\ntypes that are list-like.  Predefined interfaces include standard\nHaskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom\ntypes can easily be made ListLike instances as well.\n\nListLike also provides for String-like types, such as String and\nByteString, for types that support input and output, and for types that can handle\ninfinite lists.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.haskell98) (hsPkgs.mtl) ];
        };
      exes = {
        "runtests" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskell98) (hsPkgs.mtl) ];
          };
        };
      };
    }