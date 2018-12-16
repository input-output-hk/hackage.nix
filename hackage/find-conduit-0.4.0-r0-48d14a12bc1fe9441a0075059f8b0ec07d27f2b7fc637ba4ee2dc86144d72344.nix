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
      specVersion = "1.10";
      identifier = {
        name = "find-conduit";
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "A file-finding conduit that allows user control over traversals.";
      description = "A file-finding conduit that allows user control over traversals.  Please see\nthe module 'Data.Conduit.Find' for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.attoparsec)
          (hsPkgs.system-filepath)
          (hsPkgs.unix)
          (hsPkgs.text)
          (hsPkgs.regex-posix)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.find-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.attoparsec)
            (hsPkgs.system-filepath)
            (hsPkgs.unix)
            (hsPkgs.text)
            (hsPkgs.regex-posix)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.semigroups)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.monad-control)
            (hsPkgs.mmorph)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }