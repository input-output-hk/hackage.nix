{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hell";
        version = "2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "A Haskell shell based on shell-conduit";
      description = "A Haskell shell based on shell-conduit";
      buildType = "Simple";
    };
    components = {
      "hell" = {
        depends  = [
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.resourcet)
          (hsPkgs.process-extras)
          (hsPkgs.transformers)
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.haskeline)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.directory)
          (hsPkgs.data-default)
          (hsPkgs.pdfinfo)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.monad-extras)
          (hsPkgs.shell-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
        ] ++ (if compiler.isGhc && compiler.version.ge "7.6"
          then [ (hsPkgs.time) ]
          else [ (hsPkgs.old-time) ]);
      };
      exes = {
        "hell" = {
          depends  = [
            (hsPkgs.utf8-string)
            (hsPkgs.transformers)
            (hsPkgs.base)
            (hsPkgs.hell)
          ];
        };
      };
    };
  }