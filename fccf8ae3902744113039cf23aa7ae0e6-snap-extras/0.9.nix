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
      specVersion = "1.10";
      identifier = {
        name = "snap-extras";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oz@soostone.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "A collection of useful helpers and utilities for Snap web applications.";
      description = "This package contains a collection of helper functions\nthat come in handy in most practical, real-world\napplications. Check individual modules to understand\nwhat's here. You can simply import Snap.Extras and use\nthe initializer in there to get them all at once.";
      buildType = "Simple";
    };
    components = {
      "snap-extras" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.digestive-functors)
          (hsPkgs.digestive-functors-heist)
          (hsPkgs.digestive-functors-snap)
          (hsPkgs.directory-tree)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.heist)
          (hsPkgs.mtl)
          (hsPkgs.readable)
          (hsPkgs.safe)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.xmlhtml)
          (hsPkgs.jmacro)
        ];
      };
    };
  }