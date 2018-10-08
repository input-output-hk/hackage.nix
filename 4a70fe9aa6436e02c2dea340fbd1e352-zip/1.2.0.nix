{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "zip";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/zip";
      url = "";
      synopsis = "Operations on zip archives";
      description = "Operations on zip archives.";
      buildType = "Simple";
    };
    components = {
      "zip" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib-conduit)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.digest)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "haskell-zip-app" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.zip)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.zip)
          ];
        };
      };
    };
  }