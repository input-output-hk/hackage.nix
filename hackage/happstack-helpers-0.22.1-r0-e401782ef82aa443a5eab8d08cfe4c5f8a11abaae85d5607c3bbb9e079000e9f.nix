{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "happstack-helpers";
        version = "0.22.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Creighton Hogg <wchogg at gmail>";
      author = "Thomas Hartman, Eelco Lempsink, Jeremy Shaw, Creighton Hogg";
      homepage = "";
      url = "";
      synopsis = "Convenience functions for Happstack.";
      description = "Functions I found I was using repeatedly when programming Happstack based web-apps.\nI'll deprecate whatever bits of this make their way into the Happstack core on hackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }