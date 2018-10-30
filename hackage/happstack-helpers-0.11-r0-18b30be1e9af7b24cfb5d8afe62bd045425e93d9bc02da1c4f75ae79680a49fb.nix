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
      specVersion = "0";
      identifier = {
        name = "happstack-helpers";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>, Creighton Hogg <wchogg at gmail>";
      author = "Thomas Hartman & Eelco Lempsink & Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "Convenience functions for Happstack.";
      description = "Functions I found I was using repeatedly when programming Happstack based web-apps.\nI'll deprecate whatever bits of this make their way into the Happstack core on hackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.happstack-server)
          (hsPkgs.hscolour)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.HStringTemplate)
          (hsPkgs.HStringTemplateHelpers)
          (hsPkgs.safe)
          (hsPkgs.MissingH)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.haskell98)
          (hsPkgs.happstack-ixset)
          (hsPkgs.happstack-state)
          (hsPkgs.random)
          (hsPkgs.happstack-data)
          (hsPkgs.old-time)
          (hsPkgs.pureMD5)
          (hsPkgs.PBKDF2)
        ];
      };
    };
  }