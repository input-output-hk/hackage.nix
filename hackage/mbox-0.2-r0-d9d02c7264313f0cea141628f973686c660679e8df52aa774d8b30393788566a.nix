{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mbox";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "";
      url = "";
      synopsis = "Read and write standard mailbox files.";
      description = "Read and write standard mailbox (mboxrd) files.";
      buildType = "Simple";
    };
    components = {
      "mbox" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.text)
        ];
      };
    };
  }