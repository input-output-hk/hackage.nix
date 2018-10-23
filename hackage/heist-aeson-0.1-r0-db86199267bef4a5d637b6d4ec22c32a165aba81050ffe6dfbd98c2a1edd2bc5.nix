{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "heist-aeson";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Use JSON directly from Heist templates.";
      description = "Examples of how to use this library can be found in the \"tests\" directory.";
      buildType = "Simple";
    };
    components = {
      "heist-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.monads-fd)
          (hsPkgs.text)
          (hsPkgs.xmlhtml)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.heist)
        ];
      };
    };
  }