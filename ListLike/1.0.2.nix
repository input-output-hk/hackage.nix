{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "ListLike";
          version = "1.0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007-2008 John Goerzen";
        maintainer = "John W. Lato <jwlato@gmail.com>";
        author = "John Goerzen";
        homepage = "http://github.com/JohnLato/listlike";
        url = "";
        synopsis = "Generic support for list-like structures";
        description = "Generic support for list-like structures in Haskell.\n\nThe ListLike module provides a common interface to the various Haskell\ntypes that are list-like.  Predefined interfaces include standard\nHaskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom\ntypes can easily be made ListLike instances as well.\n\nListLike also provides for String-like types, such as String and\nByteString, for types that support input and output, and for types that can handle\ninfinite lists.";
        buildType = "Simple";
      };
      components = {
        ListLike = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
        exes = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.array
            ];
          };
        };
      };
    }