{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      zlib = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "adler32";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hs-adler32";
      url = "";
      synopsis = "An implementation of Adler-32, supporting rolling checksum operation";
      description = "This package provides an implementation of the Adler-32 checksum algorithm.\nIn supports a rolling checksum mode, i.e. the checksum of a sliding window\nof the input message can be computed efficiently. It also supports\ncompounding, i.e. the checksum of the concatenation of two messages can be\nefficiently computed from the checksums of the two parts.\n\nBy default, the highly optimized implementation of Adler-32 from @zlib@\nwill be used. This can be disabled in which case a pure haskell\nimplementation will be used instead. The haskell version is 2 to 3 times\nslower on my system.";
      buildType = "Simple";
    };
    components = {
      "adler32" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (_flags.zlib) (pkgs.lib.optional (!(!system.isWindows)) (hsPkgs.zlib));
        libs = pkgs.lib.optionals (_flags.zlib) (pkgs.lib.optional (!system.isWindows) (pkgs.z));
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.adler32)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }