{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      call-stacks = false;
      check-unchecked = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jsaddle";
        version = "0.9.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "Interface for JavaScript that works with GHCJS and GHC";
      description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.  When using GHC\nthe application is run using Warp and WebSockets to\ndrive a small JavaScipt helper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-prim)
          ]
          else [
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.ref-tf)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.uuid-types)
            (hsPkgs.vector)
          ]);
      };
    };
  }